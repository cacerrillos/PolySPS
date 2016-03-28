<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class Block {
  public $block_id;
  public $block_name;
  public function __construct($block_id, $block_name) {
    $this->block_id = $block_id;
    $this->block_name = $block_name;
  }
}

$app->get('/blocks/', function (Request $request, Response $response) {
  $data = array();
  $mysqli = $this->db;
  if($stmt = $mysqli -> prepare("SELECT `block_id`, `block_name` FROM `blocks`;")) {
    $stmt->execute();
    $stmt->bind_result($block_id, $block_name);
    while($stmt->fetch()) {
      $data[$block_id] = new Block($block_id, $block_name);
    }
    $stmt->close();
  } else {
    $response->getBody()->write($mysqli->error);
  }

  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/blocks/{block_id}', function (Request $request, Response $response) {
  $mysqli = $this->db;
  if(mysqli_connect_errno()) {
    echo "Connection Failed: " . mysqli_connect_errno();
    exit();
  }
  $block_id = $request->getAttribute('block_id');
  if($stmt = $mysqli -> prepare("SELECT `block_name` FROM `blocks` WHERE `block_id` = ? LIMIT 1;")) {
    $stmt->bind_param("i", intval($block_id));
    $stmt->execute();
    $stmt->bind_result($block_name);
    while($stmt->fetch()) {
      $response->getBody()->write(json_encode(new Block($block_id, $block_name), JSON_PRETTY_PRINT));
    }
    $stmt->close();
  } else {
    $response->getBody()->write($mysqli->error);
  }
  return $response;
});

$app->post('/blocks/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  if(isset($post_data['block_name'])) {
    //var_dump($all_gl);
    $mysqli = $this->db;

    if($stmt = $mysqli->prepare("INSERT INTO `blocks` (`block_id`, `block_name`) VALUES (NULL, ?);")) {
      $stmt->bind_param("s", $post_data['block_name']);
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

$app->put('/blocks/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  //try to save data
  if(isset($post_data['block_id']) && isset($post_data['block_name'])) {
    $mysqli = $this->db;

    if($stmt = $mysqli->prepare("UPDATE `blocks` SET `block_name` = ? WHERE `blocks`.`block_id` = ? LIMIT 1;")) {
      $stmt->bind_param("si", $post_data['block_name'], $post_data['block_id']);
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

$app->delete('/blocks/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
  $post_data = $request->getParsedBody();
    $mysqli = $this->db;
  foreach ($post_data as $key => $value) {
    if($stmt = $mysqli->prepare("DELETE FROM `blocks` WHERE `block_id` = ?;")) {
      $stmt->bind_param("i", $value['block_id']);
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