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


$app->get('/presentations/{presentation_id}', function (Request $request, Response $response) {
  $data = GetPresentation($request->getAttribute('presentation_id'), isset($request->getQueryParams()['text']));
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

?>