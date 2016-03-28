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

$app->post('/grade_levels/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  if(isset($post_data['grade_name'])) {
    //var_dump($all_gl);
    $mysqli = $this->db;

    if($stmt = $mysqli->prepare("INSERT INTO `grade_levels` (`grade_id`, `grade_name`) VALUES (NULL, ?);")) {
      $stmt->bind_param("s", $post_data['grade_name']);
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

$app->put('/grade_levels/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  //try to save data
  if(isset($post_data['grade_id']) && isset($post_data['grade_name'])) {
    $mysqli = $this->db;

    if($stmt = $mysqli->prepare("UPDATE `grade_levels` SET `grade_name` = ? WHERE `grade_levels`.`grade_id` = ? LIMIT 1;")) {
      $stmt->bind_param("si", $post_data['grade_name'], $post_data['grade_id']);
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

$app->delete('/grade_levels/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
  $post_data = $request->getParsedBody();
    $mysqli = $this->db;
  foreach ($post_data as $key => $value) {
    if($stmt = $mysqli->prepare("DELETE FROM `grade_levels` WHERE `grade_id` = ?;")) {
      $stmt->bind_param("i", $value['grade_id']);
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