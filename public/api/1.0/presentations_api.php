<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class Presentation {
  public $presentation_id;
  public $first_name;
  public $last_name;
  public $house_id;
  public $date;
  public $block_id;
  public $location_id;
  public $presentation_text;
  public $viewers;
  public $claimed;
  public function __construct() {
  }
}

function GetPresentation($mysqli, $presentation_id, $text = false, $viewers = false) {

  $pres = null;

  if($stmt = $mysqli -> prepare("SELECT `first_name`, `last_name`, `house_id`, `date`, `block_id`, `location_id`, `claimed` FROM `presentations` WHERE `presentation_id` = ? LIMIT 1;")) {
    $stmt->bind_param("i", $presentation_id);
    $stmt->execute();
    $stmt->bind_result($first_name, $last_name, $house_id, $date, $block_id, $location_id, $claimed);
    while($stmt->fetch()) {
      $pres = new Presentation();
      $pres->presentation_id = intval($presentation_id);
      $pres->first_name = $first_name;
      $pres->last_name = $last_name;
      $pres->house_id = $house_id;
      $pres->date = $date;
      $pres->block_id = $block_id;
      $pres->location_id = $location_id;
      $pres->claimed = $claimed == 1 ? true : false;
    }
    $stmt->close();
    if($text) {
      if($stmt = $mysqli -> prepare("SELECT `presentation_text` FROM `presentation_text` WHERE `presentation_id` = ? LIMIT 1;")) {
        $stmt->bind_param("i", $presentation_id);
        $stmt->execute();
        $stmt->bind_result($presentation_text);
        while($stmt->fetch()) {
          $pres->presentation_text = $presentation_text;
        }
        $stmt->close();
      }
    } else {
      echo $mysqli->error;
    }
    if($viewers) {
      $pres->viewers = array();
      $pres->viewers = GetViewersByPresentation($mysqli, $presentation_id);
    } else {
      echo $mysqli->error;
    }
  } else {
    echo $mysqli->error;
  }
    
  return $pres;
}

$app->get('/presentations/', function (Request $request, Response $response) {
  $final_data = array();
  $mysqli = $this->db;

  $pres_id = array();
  if($stmt = $mysqli -> prepare("SELECT `presentation_id` FROM `presentations`;")) {
    $stmt->execute();
    $stmt->bind_result($presentation_id);
    while($stmt->fetch()) {
      array_push($pres_id, $presentation_id);
    }
    $stmt->close();
  } else {
    echo $mysqli->error;
  }
  foreach ($pres_id as $key => $value) {
    $final_data[intval($value)] = GetPresentation($mysqli, $value, isset($request->getQueryParams()['text']), isset($request->getQueryParams()['viewers']));
  }
  $response->getBody()->write(json_encode($final_data, JSON_PRETTY_PRINT));
  return $response;
});

$app->post('/presentations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    //var_dump($post_data);
    if(isset($post_data['first_name']) &&
       isset($post_data['last_name']) &&
       isset($post_data['presentation_text']) &&
       isset($post_data['house_id']) &&
       isset($post_data['location_id']) &&
       isset($post_data['date']) &&
       isset($post_data['block_id']) &&
       isset($post_data['grades'])
       ) {
      $official_gl = GetGradeLevels($this->db);
      $all_gl = true;
      foreach ($official_gl as $key => $value) {
        if(isset($post_data['grades'][$value->grade_id])) {
          if($post_data['grades'][$value->grade_id]['grade_id'] == $value->grade_id) {
            //good
          } else {
            $all_gl = false;
          }
        } else {
          $all_gl = false;
        }
      }
      //var_dump($all_gl);
      $mysqli = $this->db;
      //create pres entry
      //create text entry
      //create limits entries
      $presentation_id = -1;
      if($stmt = $mysqli->prepare("INSERT INTO `presentations` (`presentation_id`, `first_name`, `last_name`, `house_id`, `date`, `block_id`, `location_id`) VALUES (NULL, ?,?,?,?,?,?);")) {
        $stmt->bind_param("ssiiii", trim($post_data['first_name']), trim($post_data['last_name']),
                          intval($post_data['house_id']), intval($post_data['date']), intval($post_data['block_id']), intval($post_data['location_id']) );
        $stmt->execute();
        $presentation_id = $stmt->insert_id;
        $stmt->close();
        if($stmt = $mysqli->prepare("INSERT INTO `presentation_text` (`presentation_id`, `presentation_text`) VALUES (?, ?);")) {
          $stmt->bind_param("is", $presentation_id, $post_data['presentation_text']);
          $stmt->execute();
          $stmt->close();
          foreach ($official_gl as $key => $value) {
            if($stmt = $mysqli->prepare("INSERT INTO `presentation_limits` (`id`, `grade_level`, `amount`) VALUES (?, ?, ?);")) {
              $stmt->bind_param("iii", $presentation_id, $value->grade_id, intval($post_data['grades'][$value->grade_id]['amount']));
              $stmt->execute();
              $stmt->close();
            } else {
              echo $mysqli->error;
            }
          }
        } else {
          echo $mysqli->error;
        }
      } else {
        echo $mysqli->error;
      }


      $status['status'] = true;
    }
  }
  

  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->put('/presentations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    //try to save data
    if(isset($post_data['presentation_id'])) {
      $mysqli = $this->db;
      $old_data = GetPresentation($mysqli, intval($post_data['presentation_id']), true);

      $dToFind = ['presentation_text', 'house_id', 'block_id', 'date', 'location_id', 'last_name', 'first_name'];
      $dIn = array();//$mysqli, $presentation_id, $text = false, $viewers = false
      for($x = 0; $x < count($dToFind); $x++) {
        $dIn[$dToFind[$x]] = isset($post_data[$dToFind[$x]]) ? $post_data[$dToFind[$x]] : $old_data->{$dToFind[$x]};
      }
      $t_s = false;
      $d_s = false;
      $l_s = false;
      if(isset($post_data['limits'])) {
        foreach($post_data['limits'] as $key => $value) {
          if($stmt = $mysqli->prepare("UPDATE `presentation_limits` SET `amount` = ? WHERE `presentation_limits`.`id` = ? AND `presentation_limits`.`grade_level` = ? LIMIT 1;")) {
            $stmt->bind_param("iii", $value, $post_data['presentation_id'], $key);
            $stmt->execute();
            if($stmt->affected_rows == 1) {
              $l_s = true;
            }
            $stmt->close();
          } else {
            echo $mysqli->error;
          }
        }
      }
      if($stmt = $mysqli->prepare("UPDATE `presentations` SET `house_id` = ?, `block_id` = ?, `date` = ?, `location_id` = ?, `last_name` = ?, `first_name` = ? WHERE `presentations`.`presentation_id` = ? LIMIT 1;")) {
        $stmt->bind_param("iiiissi", $dIn['house_id'], $dIn['block_id'], $dIn['date'], $dIn['location_id'], $dIn['last_name'], $dIn['first_name'], $post_data['presentation_id']);
        $stmt->execute();
        if($stmt->affected_rows == 1) {
          $d_s = true;
        }
        $stmt->close();
      } else {
        echo $mysqli->error;
      }
      if($stmt = $mysqli->prepare("UPDATE `presentation_text` SET `presentation_text` = ? WHERE `presentation_text`.`presentation_id` = ? LIMIT 1;")) {
        $stmt->bind_param("si", $dIn['presentation_text'], $post_data['presentation_id']);
        $stmt->execute();
        if($stmt->affected_rows == 1) {
          $t_s = true;
        }
        $stmt->close();
      } else {
        echo $mysqli->error;
      }
      $status['status'] = $t_s || $d_s || $l_s;
    }
  }
  
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->delete('/presentations/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    $mysqli = $this->db;

    foreach ($post_data as $key => $value) {
      if($stmt = $mysqli->prepare("DELETE FROM `presentations` WHERE `presentation_id` = ?;")) {
        $stmt->bind_param("i", $value['presentation_id']);
        $stmt->execute();
        if($stmt->affected_rows > 0) {
          $resp['status'] = true;
        }
      } else {
        echo $mysqli->error;
      }

    }
  }
  
  $response->getBody()->write(json_encode($resp, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/presentations/{presentation_id}', function (Request $request, Response $response) {
  $raw_str = $request->getAttribute('presentation_id');
  if(strpos($raw_str, ',') !== false) {
    $pres_id_arr = explode(",", $raw_str);
    for($x = 0; $x < count($pres_id_arr); $x++) {
      $data[$pres_id_arr[$x]] = GetPresentation($this->db, $pres_id_arr[$x], isset($request->getQueryParams()['text']), isset($request->getQueryParams()['viewers']));
    }
    
  } else {
    $data = GetPresentation($this->db, $request->getAttribute('presentation_id'), isset($request->getQueryParams()['text']), isset($request->getQueryParams()['viewers']));
  }
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

$app->get('/presentations/{presentation_id}/print', function (Request $request, Response $response) {
  $data = array();
  $raw_str = $request->getAttribute('presentation_id');
  if(strpos($raw_str, ',') !== false) {
    $pres_id_arr = explode(",", $raw_str);
    for($x = 0; $x < count($pres_id_arr); $x++) {
      $data[$pres_id_arr[$x]] = GetPresentation($this->db, $pres_id_arr[$x], true, true);
    }
    
  } else {
    $data[intval($request->getAttribute('presentation_id'))] = GetPresentation($this->db, $request->getAttribute('presentation_id'), true, true);
  }
  $grade_levels = GetGradeLevels($this->db);
  $houses = GetHouses($this->db);
  $locations = GetLocations($this->db);
  $blocks = GetBlocks($this->db);
  ?>
  <?
  foreach ($data as $key => $value) {
    ?>
    <h3 style="margin-bottom: 0px;"><?= date("M jS", strtotime($value->date)); ?>, <?= $blocks[$value->block_id]->block_name ?> Block - <?= $value->last_name ?>, <?= $value->first_name ?> [<?= $houses[$value->house_id]->house_name ?>]</h3>
    <h3 style="margin-top: 0px; margin-bottom: 0px;"><?= $value->presentation_text ?></h3>
    <h3 style="margin-top: 0px; margin-bottom: 0px;">Location: <?= $locations[$value->location_id]->location_name ?> - <?= count($value->viewers); ?> Viewers</h3>
    <?
    foreach ($grade_levels as $grade_key => $grade_value) {
      $is_viewers = false;
      ?>
      <div style="float: left; padding-right: 20px;">
      <h4><?= $grade_value->grade_name ?></h4>
      <table>
      <tr>
        <td>Name</td>
        <td>House</td>
      </tr>
      <?
      foreach ($value->viewers as $viewer_key => $viewer) {
        if($viewer->grade_id != $grade_value->grade_id) {
          continue;
        }
        $is_viewers = true;
        ?>
        <tr>
        <td><?= $viewer->last_name ?>, <?= $viewer->first_name ?></td>
        <td><?= $houses[$viewer->house_id]->house_name ?></td>
        </tr>
        <?
      }
      ?>
      </table>
      <? if(!$is_viewers) {

        ?>
        <h4>No Viewers...</h4>
      <?
      }
      ?>
      </div>
      <?
    }
    ?>
    <div style="clear: left;"></div>

    <div style="display: block; page-break-before: always;"></div>
    <?
  }
  ?>
  <script type="text/javascript">
  window.print();
  </script>
  <?
  //$response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

?>