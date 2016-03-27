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

function GetLocation($mysqli, $location_id) {
  $data = null;

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
  $mysqli = $this->db;
  
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
  $data = GetLocation($this->db, $request->getAttribute('location_id'));
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

$app->post('/locations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  if(isset($post_data['location_name'])) {
    //var_dump($all_gl);
    $mysqli = $this->db;

    if($stmt = $mysqli->prepare("INSERT INTO `locations` (`location_id`, `location_name`) VALUES (NULL, ?);")) {
      $stmt->bind_param("s", $post_data['location_name']);
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

$app->put('/locations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  //try to save data
  if(isset($post_data['location_id'])) {
    $mysqli = $this->db;
    $old_data = GetLocation($mysqli, intval($post_data['location_id']));
    if($old_data->location_id == intval($post_data['location_id'])) {
      $location_name = isset($post_data['location_name']) ? $post_data['location_name'] : $old_data->location_name;

      if($stmt = $mysqli->prepare("UPDATE `locations` SET `location_name` = ? WHERE `locations`.`location_id` = ? LIMIT 1;")) {
        $stmt->bind_param("si", $location_name, $post_data['location_id']);
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

$app->delete('/locations/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
  $post_data = $request->getParsedBody();
    $mysqli = $this->db;
  foreach ($post_data as $key => $value) {
    if($stmt = $mysqli->prepare("DELETE FROM `locations` WHERE `location_id` = ?;")) {
      $stmt->bind_param("i", $value['location_id']);
      $stmt->execute();
      if($stmt->affected_rows > 0) {
        $resp['status'] = true;
      }
      $stmt->close();
    } else {
      echo $mysqli->error;
    }
  }
  $response->getBody()->write(json_encode($resp, JSON_PRETTY_PRINT));
  return $response;
});

?>