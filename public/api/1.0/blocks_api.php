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

  } else {
    $response->getBody()->write($mysqli->error);
  }
    
    

  return $response;
});

?>