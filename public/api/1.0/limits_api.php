<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class Limits {
  public $presentation_id;
  public $grade_level;
  public $amount;
  public $total = -1;
  public function __construct($presentation_id, $grade_level, $amount) {
    $this->presentation_id = $presentation_id;
    $this->grade_level = $grade_level;
    $this->amount = $amount;
  }
}

function GetLimits($mysqli, $presentation_id, $totals = false) {
  $arr = array();
  
  if($stmt = $mysqli -> prepare("SELECT `grade_level`, `amount` FROM `presentation_limits` WHERE `id` = ?;")) {
    $stmt->bind_param("i", $presentation_id);
    $stmt->execute();
    $stmt->bind_result($grade_level, $amount);
    while($stmt->fetch()) {
      $arr[intval($grade_level)] = new Limits($presentation_id, $grade_level, $amount);
    }

  } else {
    $response->getBody()->write($mysqli->error);
  }

  $count_arr = array();

  if($totals) {
    if($stmt = $mysqli -> prepare("SELECT `viewers`.`grade_id` FROM `registrations` INNER JOIN `viewers` ON `registrations`.`viewer` = `viewers`.`viewer_id` WHERE `registrations`.`presentation` = ?;")) {
      $stmt->bind_param("i", $presentation_id);
      $stmt->execute();
      $stmt->bind_result($grade_level);
      while($stmt->fetch()) {
        if($arr[intval($grade_level)]->total == -1) {
          $arr[intval($grade_level)]->total = 0;
        }
        $arr[intval($grade_level)]->total += 1;
      }
      $stmt->close();
    } else {
      echo $mysqli->error;
    }
    foreach ($arr as $key => $value) {
      if($value->total == -1) {
        $value->total = 0;
      }
    }
  }
  
  return $arr;
}

$app->get('/limits/', function (Request $request, Response $response) {
  $final_data = array();
  $mysqli = $this->db;

  $pres_id = array();
  if($stmt = $mysqli -> prepare("SELECT `presentation_id` FROM `presentations`;")) {
    $stmt->execute();
    $stmt->bind_result($presentation_id);
    while($stmt->fetch()) {
      array_push($pres_id, $presentation_id);
    }
    $stmt->close();
  } else {
    echo $mysqli->error;
  }
  foreach ($pres_id as $key => $value) {
    $final_data[intval($value)] = GetLimits($mysqli, $value, isset($request->getQueryParams()['totals']));
  }
  $response->getBody()->write(json_encode($final_data, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/limits/{house_id}', function (Request $request, Response $response) {
  $data = GetLimits($this->db, $request->getAttribute('house_id'), isset($request->getQueryParams()['totals']));

  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});

?>