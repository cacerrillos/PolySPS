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

function GetHouses($mysqli) {
  $data = array();
  if($stmt = $mysqli -> prepare("SELECT `house_id`,  `house_name` FROM `houses`;")) {
    $stmt->execute();
    $stmt->bind_result($house_id, $house_name);
    while($stmt->fetch()) {
      $data[$house_id] = new House($house_id, $house_name);
    }
  } else {
    echo $mysqli->error;
  }

  return $data;
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

$app->post('/houses/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if($this->is_admin) {
    if(isset($post_data['house_name'])) {
      //var_dump($all_gl);
      $mysqli = $this->db;

      if($stmt = $mysqli->prepare("INSERT INTO `houses` (`house_id`, `house_name`) VALUES (NULL, ?);")) {
        $stmt->bind_param("s", $post_data['house_name']);
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
  $post_data = $request->getParsedBody();

  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->put('/houses/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    //try to save data
    if(isset($post_data['house_id'])) {
      $mysqli = $this->db;
      $old_data = GetLocation($mysqli, intval($post_data['house_id']));
      if($old_data->house_id == intval($post_data['house_id'])) {
        $house_name = isset($post_data['house_name']) ? $post_data['house_name'] : $old_data->house_name;

        if($stmt = $mysqli->prepare("UPDATE `houses` SET `house_name` = ? WHERE `houses`.`house_id` = ? LIMIT 1;")) {
          $stmt->bind_param("si", $house_name, $post_data['house_id']);
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
  }
  
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->delete('/houses/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
  if($this->is_admin) {
    $post_data = $request->getParsedBody();
    $mysqli = $this->db;
    foreach ($post_data as $key => $value) {
      if($stmt = $mysqli->prepare("DELETE FROM `houses` WHERE `house_id` = ?;")) {
        $stmt->bind_param("i", $value['house_id']);
        $stmt->execute();
        if($stmt->affected_rows > 0) {
          $resp['status'] = true;
        }
        $stmt->close();
      } else {
        echo $mysqli->error;
      }
    }
  }
  
  $response->getBody()->write(json_encode($resp, JSON_PRETTY_PRINT));
  return $response;
});


?>