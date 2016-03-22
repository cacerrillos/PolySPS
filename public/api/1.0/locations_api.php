<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class Location {
  public $location_id;
  public $location_name;
  public function __construct($location_id, $location_name) {
    $this->location_id = $location_id;
    $this->location_name = $location_name;
  }
}

function GetLocation($location_id) {
  $data = null;
  global $db_host, $db_user, $db_pass, $db_name;
  $mysqli = new mysqli($db_host, $db_user, $db_pass);
  $mysqli -> select_db($db_name);
  if(mysqli_connect_errno()) {
    echo "Connection Failed: " . mysqli_connect_errno();
    exit();
  }
  if($stmt = $mysqli -> prepare("SELECT `location_name` FROM `locations` WHERE `location_id` = ? LIMIT 1;")) {
    $stmt->bind_param("i", intval($location_id));
    $stmt->execute();
    $stmt->bind_result($location_name);
    while($stmt->fetch()) {
      $data = new Location($location_id, $location_name);
    }
    $stmt->close();
  } else {
    echo $mysqli->error;
  }
  return $data;
}

$app->get('/locations/', function (Request $request, Response $response) {
  $data = array();
  global $db_host, $db_user, $db_pass, $db_name;
  $mysqli = new mysqli($db_host, $db_user, $db_pass);
  $mysqli -> select_db($db_name);
  if(mysqli_connect_errno()) {
    echo "Connection Failed: " . mysqli_connect_errno();
    exit();
  }
  if($stmt = $mysqli -> prepare("SELECT `location_id`, `location_name` FROM `locations`;")) {
    $stmt->execute();
    $stmt->bind_result($location_id, $location_name);
    while($stmt->fetch()) {
      $data[$location_id] = new Location($location_id, $location_name);
    }
    $stmt->close();
  } else {
    echo $mysqli->error;
  }
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/locations/{location_id}', function (Request $request, Response $response) {
  $data = GetLocation($request->getAttribute('location_id'));
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

?>