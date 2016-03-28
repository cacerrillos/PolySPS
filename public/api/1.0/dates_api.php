<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class Date {
  public $date;
  public function __construct($date) {
    $this->date = $date;
  }
}

$app->get('/dates/', function (Request $request, Response $response) {
  $mysqli = $this->db;
  //$grade_id = $request->getAttribute('grade_id');
  $dates = array();
  if($stmt = $mysqli -> prepare("SELECT `date` FROM `dates`;")) {
    $stmt->bind_result($date);
    $stmt->execute();
    while($stmt->fetch()) {
      array_push($dates, new Date($date));
    }
  } else {
    $response->getBody()->write($mysqli->error);
  }
    
  $response->getBody()->write(json_encode($dates, JSON_PRETTY_PRINT));

  return $response;
});

$app->post('/dates/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  if(isset($post_data['date'])) {
    //var_dump($all_gl);
    $mysqli = $this->db;

    if($stmt = $mysqli->prepare("INSERT INTO `dates` (`date`) VALUES (?);")) {
      $stmt->bind_param("i", $post_data['date']);
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

$app->put('/dates/', function(Request $request, Response $response) {
  $status = array();
  $status['status'] = false;
  $post_data = $request->getParsedBody();
  //try to save data
  if(isset($post_data['date']) && isset($post_data['date_old'])) {
    $mysqli = $this->db;

    if($stmt = $mysqli->prepare("UPDATE `dates` SET `date` = ? WHERE `dates`.`date` = ? LIMIT 1;")) {
      $stmt->bind_param("ii", $post_data['date'], $post_data['date_old']);
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

$app->delete('/dates/', function (Request $request, Response $response) {
  $resp = array();
  $resp['status'] = false;
  $post_data = $request->getParsedBody();
    $mysqli = $this->db;
  foreach ($post_data as $key => $value) {
    if($stmt = $mysqli->prepare("DELETE FROM `dates` WHERE `date` = ?;")) {
      $stmt->bind_param("i", $value['date']);
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