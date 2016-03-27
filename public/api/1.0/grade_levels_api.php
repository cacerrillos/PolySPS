<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class GradeLevel {
  public $grade_id;
  public $grade_name;
  public function __construct($grade_id, $grade_name) {
    $this->grade_id = $grade_id;
    $this->grade_name = $grade_name;
  }
}

function GetGradeLevels($mysqli) {
  $data = array();
  if($stmt = $mysqli -> prepare("SELECT `grade_id`,  `grade_name` FROM `grade_levels`;")) {
    $stmt->execute();
    $stmt->bind_result($grade_id, $grade_name);
    while($stmt->fetch()) {
      $data[$grade_id] = new GradeLevel($grade_id, $grade_name);
    }
  } else {
    echo $mysqli->error;
  }

  return $data;
}

$app->get('/grade_levels/', function (Request $request, Response $response) {
  $data = array();
  $mysqli = $this->db;
  if($stmt = $mysqli -> prepare("SELECT `grade_id`,  `grade_name` FROM `grade_levels`;")) {
    $stmt->execute();
    $stmt->bind_result($grade_id, $grade_name);
    while($stmt->fetch()) {
      $data[$grade_id] = new GradeLevel($grade_id, $grade_name);
    }
  } else {
    $response->getBody()->write($mysqli->error);
  }
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));

  return $response;
});

$app->get('/grade_levels/{grade_id}', function (Request $request, Response $response) {
  $mysqli = $this->db;
  $grade_id = $request->getAttribute('grade_id');
  if($stmt = $mysqli -> prepare("SELECT `grade_name` FROM `grade_levels` WHERE `grade_id` = ? LIMIT 1;")) {
    $stmt->bind_param("i", intval($grade_id));
    $stmt->execute();
    $stmt->bind_result($grade_name);
    while($stmt->fetch()) {
      $response->getBody()->write(json_encode(new GradeLevel($grade_id, $grade_name), JSON_PRETTY_PRINT));
    }

  } else {
    $response->getBody()->write($mysqli->error);
  }
    
    

  return $response;
});

?>