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

function GetViewer($viewer_id) {
  global $db_host, $db_user, $db_pass, $db_name;

  $pres = null;

  $mysqli = new mysqli($db_host, $db_user, $db_pass);
  $mysqli -> select_db($db_name);
  if(mysqli_connect_errno()) {
    echo "Connection Failed: " . mysqli_connect_errno();
    exit();
  }
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
    }
    $stmt->close();
  } else {
    echo $mysqli->error;
  }
    
  return $pres;
}
function GetViewerM($mysqli, $viewer_id) {

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
    }
    $stmt->close();
  } else {
    echo $mysqli->error;
  }
    
  return $pres;
}

function GetViewersByPresentation($mysqli, $presentation_id) {
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
    $final_data[intval($value)] = GetViewerM($mysqli, $value);
  }
  return $final_data;
}
$app->get('/viewers/', function (Request $request, Response $response) {
  $final_data = array();
  global $db_host, $db_user, $db_pass, $db_name;
  $mysqli = new mysqli($db_host, $db_user, $db_pass);
  $mysqli -> select_db($db_name);

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
    $final_data[intval($value)] = GetViewer($value);
  }
  $response->getBody()->write(json_encode($final_data, JSON_PRETTY_PRINT));
  return $response;
});

$app->post('/viewers/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  if(isset($post_data['first_name']) &&
     isset($post_data['last_name']) &&
     isset($post_data['house_id']) &&
     isset($post_data['grade_id'])
     ) {
    //var_dump($all_gl);
    global $db_host, $db_user, $db_pass, $db_name;
    $mysqli = new mysqli($db_host, $db_user, $db_pass);
    $mysqli -> select_db($db_name);

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

  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->put('/viewers/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  //try to save data
  if(isset($post_data['viewer_id'])) {
    global $db_host, $db_user, $db_pass, $db_name;
    $mysqli = new mysqli($db_host, $db_user, $db_pass);
    $mysqli -> select_db($db_name);
    $old_data = GetViewer(intval($post_data['viewer_id']));
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
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->delete('/viewers/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
  $post_data = $request->getParsedBody();
  global $db_host, $db_user, $db_pass, $db_name;
    $mysqli = new mysqli($db_host, $db_user, $db_pass);
    $mysqli -> select_db($db_name);
  foreach ($post_data as $key => $value) {
    if($stmt = $mysqli->prepare("DELETE FROM `viewers` WHERE `viewer_id` = ?;")) {
      $stmt->bind_param("i", $value['viewer_id']);
      $stmt->execute();
      if($stmt->affected_rows > 0) {
        $resp['status'] = true;
      }
    } else {
      echo $mysqli->error;
    }
  }
  $response->getBody()->write(json_encode($resp, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/viewers/{viewer_id}', function (Request $request, Response $response) {
  $data = GetViewer($request->getAttribute('viewer_id'));
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

?>