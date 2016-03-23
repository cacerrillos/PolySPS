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
  public function __construct() {
  }
}

function GetPresentation($presentation_id, $text = false) {
  global $db_host, $db_user, $db_pass, $db_name;

  $pres = null;

  $mysqli = new mysqli($db_host, $db_user, $db_pass);
  $mysqli -> select_db($db_name);
  if(mysqli_connect_errno()) {
    echo "Connection Failed: " . mysqli_connect_errno();
    exit();
  }
  if($stmt = $mysqli -> prepare("SELECT `first_name`, `last_name`, `house_id`, `date`, `block_id`, `location_id` FROM `presentations` WHERE `presentation_id` = ? LIMIT 1;")) {
    $stmt->bind_param("i", intval($presentation_id));
    $stmt->execute();
    $stmt->bind_result($first_name, $last_name, $house_id, $date, $block_id, $location_id);
    while($stmt->fetch()) {
      $pres = new Presentation();
      $pres->presentation_id = intval($presentation_id);
      $pres->first_name = $first_name;
      $pres->last_name = $last_name;
      $pres->house_id = $house_id;
      $pres->date = $date;
      $pres->block_id = $block_id;
      $pres->location_id = $location_id;
    }
    $stmt->close();
    if($text) {
      if($stmt = $mysqli -> prepare("SELECT `presentation_text` FROM `presentation_text` WHERE `presentation_id` = ? LIMIT 1;")) {
        $stmt->bind_param("i", intval($presentation_id));
        $stmt->execute();
        $stmt->bind_result($presentation_text);
        while($stmt->fetch()) {
          $pres->presentation_text = $presentation_text;
        }
      }
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
  global $db_host, $db_user, $db_pass, $db_name;
  $mysqli = new mysqli($db_host, $db_user, $db_pass);
  $mysqli -> select_db($db_name);

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
    $final_data[intval($value)] = GetPresentation($value, isset($request->getQueryParams()['text']));
  }
  $response->getBody()->write(json_encode($final_data, JSON_PRETTY_PRINT));
  return $response;
});

$app->post('/presentations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
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
    $official_gl = GetGradeLevels();
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
    global $db_host, $db_user, $db_pass, $db_name;
    $mysqli = new mysqli($db_host, $db_user, $db_pass);
    $mysqli -> select_db($db_name);
    //create pres entry
    //create text entry
    //create limits entries
    $presentation_id = -1;
    if($stmt = $mysqli->prepare("INSERT INTO `presentations` (`presentation_id`, `first_name`, `last_name`, `house_id`, `date`, `block_id`, `location_id`) VALUES (NULL, ?,?,?,?,?,?);")) {
      $stmt->bind_param("ssiiii", $post_data['first_name'], $post_data['last_name'],
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

  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->put('/presentations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  //try to save data
  if(isset($post_data['presentation_id']) && isset($post_data['presentation_text'])) {
    global $db_host, $db_user, $db_pass, $db_name;
    $mysqli = new mysqli($db_host, $db_user, $db_pass);
    $mysqli -> select_db($db_name);
    if($stmt = $mysqli->prepare("UPDATE `presentation_text` SET `presentation_text` = ? WHERE `presentation_text`.`presentation_id` = ? LIMIT 1;")) {
      $stmt->bind_param("si", $post_data['presentation_text'], $post_data['presentation_id']);
      $stmt->execute();
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

$app->delete('/presentations/', function (Request $request, Response $response) {
  $post_data = $request->getParsedBody();
  global $db_host, $db_user, $db_pass, $db_name;
    $mysqli = new mysqli($db_host, $db_user, $db_pass);
    $mysqli -> select_db($db_name);
  foreach ($post_data as $key => $value) {
    if($stmt = $mysqli->prepare("DELETE FROM `presentations` WHERE `presentation_id` = ?;")) {
      $stmt->bind_param("i", $value['presentation_id']);
      $stmt->execute();
    } else {
      echo $mysqli->error;
    }
  }
  return $response;
});

$app->get('/presentations/{presentation_id}', function (Request $request, Response $response) {
  $data = GetPresentation($request->getAttribute('presentation_id'), isset($request->getQueryParams()['text']));
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

?>