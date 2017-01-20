<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class Viewer {
  public $viewer_id;
  public $first_name;
  public $last_name;
  public $house_id;
  public $grade_id;
  public function __construct() {
  }
}

function GetViewer($mysqli, $viewer_id, $presentations = false) {

  $pres = null;

  if($stmt = $mysqli -> prepare("SELECT `first_name`, `last_name`, `house_id`, `grade_id` FROM `viewers` WHERE `viewer_id` = ? LIMIT 1;")) {
    $stmt->bind_param("i", $viewer_id);
    $stmt->execute();
    $stmt->bind_result($first_name, $last_name, $house_id, $grade_id);
    while($stmt->fetch()) {
      $pres = new Viewer();
      $pres->viewer_id = intval($viewer_id);
      $pres->first_name = $first_name;
      $pres->last_name = $last_name;
      $pres->house_id = $house_id;
      $pres->grade_id = $grade_id;
      $pres->presentations = array();
    }
    $stmt->close();
    if($presentations) {
      $pres_id = array();
      if($stmt = $mysqli -> prepare("SELECT `presentation` FROM `registrations` WHERE `viewer`=?;")) {
        $stmt->bind_param("i", $viewer_id);
        $stmt->execute();
        $stmt->bind_result($presentation_id);
        while($stmt->fetch()) {
          array_push($pres_id, $presentation_id);
        }
        $stmt->close();
      } else {
        echo $mysqli->error;
      }
      $pres->presentations = $pres_id;
    }
  } else {
    echo $mysqli->error;
  }


  return $pres;
}

function GetViewersByPresentation($mysqli, $presentation_id, $presentations = false) {
  $final_data = array();
  $pres_id = array();
  if($stmt = $mysqli -> prepare("SELECT `viewer` FROM `registrations` WHERE `presentation`=?;")) {
    $stmt->bind_param("i", $presentation_id);
    $stmt->execute();
    $stmt->bind_result($viewer_id);
    while($stmt->fetch()) {
      array_push($pres_id, $viewer_id);
    }
    $stmt->close();
  } else {
    echo $mysqli->error;
  }
  foreach ($pres_id as $key => $value) {
    $final_data[intval($value)] = GetViewer($mysqli, $value, $presentations);
  }
  return $final_data;
}

function GetCount($mysqli) {
  $count_out = -1;
  if($stmt = $mysqli->prepare("SELECT COUNT(`viewers`.`grade_id`) FROM `viewers`;")) {
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $count_out = $count;
    $stmt->close();
  }
  return $count_out;
}

function GetCountByGradeLevel($mysqli, $grade_id) {
  $count_out = -1;
  if($stmt = $mysqli->prepare("SELECT COUNT(`viewers`.`grade_id`) FROM `viewers` WHERE `viewers`.`grade_id` = ?;")) {
    $stmt->bind_param("i", $grade_id);
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $count_out = $count;
    $stmt->close();
  }
  return $count_out;
}

function GetCountByGradeLevelAndHouse($mysqli, $grade_id, $house_id) {
  $count_out = -1;
  if($stmt = $mysqli->prepare("SELECT COUNT(`viewers`.`grade_id`) FROM `viewers` WHERE `viewers`.`grade_id` = ? AND `viewers`.`house_id` = ?;")) {
    $stmt->bind_param("ii", $grade_id, $house_id);
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $count_out = $count;
    $stmt->close();
  }
  return $count_out;
}

$app->get('/viewers/me', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if(isset($_SESSION['viewer_id'])) {
    $status['status'] = true;
    $status['viewer_id'] = $_SESSION['viewer_id'];
    $data = GetViewer($this->db, $_SESSION['viewer_id']);
    if($data) {
      $status['first_name'] = $data->first_name;
      $status['last_name'] = $data->last_name;
      $status['house_id'] = $data->house_id;
      $status['grade_id'] = $data->grade_id;
      //$status = array_merge($status, $data);
    }
    
  }
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/viewers/', function (Request $request, Response $response) {
  $final_data = array();
  $mysqli = $this->db;

  $pres_id = array();
  if(!isset($request->getQueryParams()['presentation_id'])) {
    if($stmt = $mysqli -> prepare("SELECT `viewer_id` FROM `viewers`;")) {
      $stmt->execute();
      $stmt->bind_result($viewer_id);
      while($stmt->fetch()) {
        array_push($pres_id, $viewer_id);
      }
      $stmt->close();
    } else {
      echo $mysqli->error;
    }
  } else {
    $presentation_id = $request->getQueryParams()['presentation_id'];

    if($stmt = $mysqli -> prepare("SELECT `viewer` FROM `registrations` WHERE `presentation`=?;")) {
      $stmt->bind_param("i", $presentation_id);
      $stmt->execute();
      $stmt->bind_result($viewer_id);
      while($stmt->fetch()) {
        array_push($pres_id, $viewer_id);
      }
      $stmt->close();
    } else {
      echo $mysqli->error;
    }
  }
  

  foreach ($pres_id as $key => $value) {
    $final_data[intval($value)] = GetViewer($mysqli, $value, isset($request->getQueryParams()['presentations']));
  }
  $response->getBody()->write(json_encode($final_data, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/viewers/count', function(Request $request, Response $response ) {
  $result = array();

  $grade_levels = GetGradeLevels($this->db);
  $houses = GetHouses($this->db);

  $result['count'] = GetCount($this->db);
  foreach ($grade_levels as $key => $value) {
    $result[$value->grade_id]['count'] = GetCountByGradeLevel($this->db, $value->grade_id);
    foreach ($houses as $key_i => $value_i) {
      $result[$value->grade_id][$value_i->house_id]['count'] = GetCountByGradeLevelAndHouse($this->db, $value->grade_id, $value_i->house_id);
    }
  }

  $response->withJson($result, 200, JSON_PRETTY_PRINT);
  return $response;
});

$app->get('/viewers/count/{grade_id}', function(Request $request, Response $response ) {
  $result = array();
  $result['count'] = GetCountByGradeLevel($this->db, $request->getAttribute('grade_id'));
  
  $response->withJson($result, 200, JSON_PRETTY_PRINT);
  return $response;
});

$app->get('/viewers/count/{grade_id}/{house_id}', function(Request $request, Response $response ) {
  $result = array();
  $result['count'] = -1;
  if($stmt = $this->db->prepare("SELECT COUNT(`viewers`.`grade_id`) FROM `viewers` WHERE `viewers`.`grade_id` = ? AND `viewers`.`house_id` = ?;")) {
    $stmt->bind_param("ii", $request->getAttribute('grade_id'), $request->getAttribute('house_id'));
    $stmt->execute();
    $stmt->bind_result($count);
    $stmt->fetch();
    $result['count'] = $count;
    $stmt->close();
  }
  $response->withJson($result, 200, JSON_PRETTY_PRINT);
  return $response;
});

$app->post('/viewers/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    if(isset($post_data['first_name']) &&
       isset($post_data['last_name']) &&
       isset($post_data['house_id']) &&
       isset($post_data['grade_id'])
       ) {
      //var_dump($all_gl);
      $mysqli = $this->db;

      $viewer_id = -1;
      if($stmt = $mysqli->prepare("INSERT INTO `viewers` (`viewer_id`, `first_name`, `last_name`, `email`, `house_id`, `grade_id`) VALUES (NULL, ?, ?, '', ?, ?);")) {
        $stmt->bind_param("ssii", $post_data['first_name'], $post_data['last_name'],
                          intval($post_data['house_id']), intval($post_data['grade_id']) );
        $stmt->execute();
        $viewer_id = $stmt->insert_id;
        if($stmt->affected_rows == 1) {
          $status['status'] = true;
        }
        $stmt->close();
      } else {
        echo $mysqli->error;
      }
    }
  }
  

  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->put('/viewers/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    //try to save data
    if(isset($post_data['viewer_id'])) {
      $mysqli = $this->db;
      $old_data = GetViewer($mysqli, intval($post_data['viewer_id']));
      if($old_data->viewer_id == intval($post_data['viewer_id'])) {
        $first_name = isset($post_data['first_name']) ? $post_data['first_name'] : $old_data->first_name;
        $last_name = isset($post_data['last_name']) ? $post_data['last_name'] : $old_data->last_name;
        $house_id = isset($post_data['house_id']) ? $post_data['house_id'] : $old_data->house_id;
        $grade_id = isset($post_data['grade_id']) ? $post_data['grade_id'] : $old_data->grade_id;

        if($stmt = $mysqli->prepare("UPDATE `viewers` SET `first_name` = ?, `last_name` = ?, `house_id` = ?, `grade_id` = ? WHERE `viewers`.`viewer_id` = ? LIMIT 1;")) {
          $stmt->bind_param("ssiii", $first_name, $last_name, $house_id, $grade_id, intval($post_data['viewer_id']));
          $stmt->execute();
          if($stmt->affected_rows == 1) {
            $status['status'] = true;
          }
          $stmt->close();
        } else {
          echo $mysqli->error;
        }
      }
    }
  }
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->delete('/viewers/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    $mysqli = $this->db;
    foreach ($post_data as $key => $value) {
      if($stmt = $mysqli->prepare("DELETE FROM `viewers` WHERE `viewer_id` = ?;")) {
        $stmt->bind_param("i", $value['viewer_id']);
        $stmt->execute();
        if($stmt->affected_rows > 0) {
          $resp['status'] = true;
        }
        $stmt->close();
      } else {
        echo $mysqli->error;
      }
    }
  }
  
  $response->getBody()->write(json_encode($resp, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/viewers/{viewer_id}', function (Request $request, Response $response) {
  $raw_str = $request->getAttribute('viewer_id');
  if(strpos($raw_str, ',') !== false) {
    $viewer_id_arr = explode(",", $raw_str);
    for($x = 0; $x < count($viewer_id_arr); $x++) {
      $data[$viewer_id_arr[$x]] = GetViewer($this->db, $viewer_id_arr[$x], isset($request->getQueryParams()['presentations']));
    }
    
  } else {
    $data = GetViewer($this->db, $request->getAttribute('viewer_id'), isset($request->getQueryParams()['presentations']));
  }
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

$app->get('/viewers/{viewer_id}/print', function (Request $request, Response $response) {
  $raw_str = $request->getAttribute('viewer_id');
  if(strpos($raw_str, ',') !== false) {
    $viewer_id_arr = explode(",", $raw_str);
    for($x = 0; $x < count($viewer_id_arr); $x++) {
      $data[$viewer_id_arr[$x]] = GetViewer($this->db, $viewer_id_arr[$x], true);
    }
    
  } else {
    $data = GetViewer($this->db, $request->getAttribute('viewer_id'), true);
  }
  $presentations = GetPresentations($this->db, true, true);
  $blocks = GetBlocks($this->db);
  $locations = GetLocations($this->db);

  foreach ($data as $key => $viewer) {
    ?>
    <h3><?= $viewer->last_name ?>, <?= $viewer->first_name ?></h3>
    <table cellpadding="4">
      <tr>
        <td>Date</td>
        <td>Location</td>
        <td>Presentor</td>
        <td>Topic</td>
      </tr>
      <?
      $date_block = array();
      foreach ($viewer->presentations as $key => $presentation_id) {
        $presentation = $presentations[$presentation_id];
        $date_block[$key] = $presentation->date . preg_replace("/[^0-9]/", "", $blocks[$presentation->block_id]->block_name);
      }
      array_multisort($date_block, SORT_ASC, SORT_REGULAR , $viewer->presentations);
      foreach ($viewer->presentations as $key => $presentation_id) {
        $presentation = $presentations[$presentation_id];
        ?>
        <tr>
          <td><?= date("M jS", strtotime($presentation->date)) ?> - <?= $blocks[$presentation->block_id]->block_name ?></td>
          <td><?= $locations[$presentation->location_id]->location_name ?></td>
          <td><?= $presentation->first_name ?> <?= $presentation->last_name?></td>
          <td><?= $presentation->presentation_text ?></td>
        </tr>
        <?
      }
      ?>
    </table>
    <div style="display: block; page-break-before: always;"></div>
    <?
  }
  ?>
  <script type="text/javascript">
  window.print();
  </script>
  <?

  return $response;
});

$app->get('/viewers/{grade_id}/{house_id}/print', function (Request $request, Response $response) {
  $grade_id = $request->getAttribute('grade_id');
  $house_id = $request->getAttribute('house_id');
  echo $grade_id . " <br>";
  echo $house_id . " <br>";
  $presentation_ids = array();
  if($stmt = $this->db->prepare("SELECT `viewer_id` FROM `viewers` WHERE `grade_id` = ? AND `house_id` = ?;")) {
    $stmt->bind_param("ii", $grade_id, $house_id);
    $stmt->execute();
    $stmt->bind_result($viewer_id);
    while($stmt->fetch()) {
      array_push($presentation_ids, $viewer_id);
      echo $viewer_id . " <br>";
    }
    $stmt->close();
  }
  $data = array();
  foreach ($presentation_ids as $key => $value) {
    $data[$value] = GetViewer($this->db, $value, true);
  }

  $presentations = GetPresentations($this->db, true, true);
  $blocks = GetBlocks($this->db);
  $locations = GetLocations($this->db);



  foreach ($data as $key => $viewer) {
    ?>
    <h3><?= $viewer->last_name ?>, <?= $viewer->first_name ?></h3>
    <table cellpadding="4">
      <tr>
        <td>Date</td>
        <td>Location</td>
        <td>Presentor</td>
        <td>Topic</td>
      </tr>
      <?
      $date_block = array();
      foreach ($viewer->presentations as $key => $presentation_id) {
        $presentation = $presentations[$presentation_id];
        $date_block[$key] = $presentation->date . preg_replace("/[^0-9]/", "", $blocks[$presentation->block_id]->block_name);
      }
      array_multisort($date_block, SORT_ASC, SORT_REGULAR , $viewer->presentations);
      foreach ($viewer->presentations as $key => $presentation_id) {
        $presentation = $presentations[$presentation_id];
        ?>
        <tr>
          <td><?= date("M jS", strtotime($presentation->date)) ?> - <?= $blocks[$presentation->block_id]->block_name ?></td>
          <td><?= $locations[$presentation->location_id]->location_name ?></td>
          <td><?= $presentation->first_name ?> <?= $presentation->last_name?></td>
          <td><?= $presentation->presentation_text ?></td>
        </tr>
        <?
      }
      ?>
    </table>
    <div style="display: block; page-break-before: always;"></div>
    <?
  }
  ?>
  <script type="text/javascript">
  //window.print();
  </script>
  <?

  return $response;
});

?>