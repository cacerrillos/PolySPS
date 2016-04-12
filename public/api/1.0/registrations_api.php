<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

$app->post('/registrations/', function (Request $request, Response $response) {
  $post_data = $request->getParsedBody();
  $status = array();
  $status['status'] = true;
  foreach ($post_data as $key => $value) {
    if($stmt = $this->db->prepare("INSERT INTO `registrations` (`presentation`, `viewer`, `timestamp`) VALUES (?, ?, '111');")) {
      $stmt->bind_param("ii", $value['presentation_id'], $value['viewer_id']);
      $stmt->execute();
      $status['status'] = $status['status'] && $stmt->affected_rows > 0;
      $stmt->close();
    } else {
      //echo $this->db->error;
    }
  }

  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;

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

$app->get('/registrations/{viewer_id}', function (Request $request, Response $response) {
  $data = array();
  $mysqli = $this->db;
  $viewer_id = $request->getAttribute('viewer_id');
  if($stmt = $mysqli -> prepare("SELECT `registrations`.`presentation`, `presentations`.`date`, `presentations`.`block_id` FROM `registrations` JOIN `presentations` ON `registrations`.`presentation` = `presentations`.`presentation_id` WHERE `registrations`.`viewer` = ?;")) {
    $stmt->bind_param("i", $viewer_id);
    $stmt->execute();
    $stmt->bind_result($presentation_id, $date, $block_id);
    while($stmt->fetch()) {
      $arr = array();
      $arr['presentation_id'] = $presentation_id;
      $arr['viewer_id'] = intval($viewer_id);
      $arr['date'] = intval($date);
      $arr['block_id'] = intval($block_id);
      array_push($data, $arr);
      
    }
    $stmt->close();
  } else {
    $response->getBody()->write($mysqli->error);
  }
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});
/*
$app->post('/registrations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
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
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});
*/
$app->put('/registrations/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
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
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->delete('/registrations/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
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
  $response->getBody()->write(json_encode($resp, JSON_PRETTY_PRINT));
  return $response;
});


?>