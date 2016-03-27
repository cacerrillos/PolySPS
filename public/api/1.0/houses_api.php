<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class House {
  public $house_id;
  public $house_name;
  public function __construct($house_id, $house_name) {
    $this->house_id = $house_id;
    $this->house_name = $house_name;
  }
}

$app->get('/houses/', function (Request $request, Response $response) {
  $data = array();
  $mysqli = $this->db;
  if($stmt = $mysqli -> prepare("SELECT `house_id`, `house_name` FROM `houses`;")) {
    $stmt->execute();
    $stmt->bind_result($house_id, $house_name);
    while($stmt->fetch()) {
      $data[$house_id] = new House($house_id, $house_name);
    }
    $stmt->close();
  } else {
    $response->getBody()->write($mysqli->error);
  }
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/houses/{house_id}', function (Request $request, Response $response) {
  $mysqli = $this->db;
  $house_id = $request->getAttribute('house_id');
  if($stmt = $mysqli -> prepare("SELECT `house_name` FROM `houses` WHERE `house_id` = ? LIMIT 1;")) {
    $stmt->bind_param("i", intval($house_id));
    $stmt->execute();
    $stmt->bind_result($house_name);
    while($stmt->fetch()) {
      $response->getBody()->write(json_encode(new House($house_id, $house_name), JSON_PRETTY_PRINT));
    }

  } else {
    $response->getBody()->write($mysqli->error);
  }
  return $response;
});

?>