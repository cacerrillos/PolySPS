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
  global $db_host, $db_user, $db_pass, $db_name;
  $mysqli = new mysqli($db_host, $db_user, $db_pass);
  $mysqli -> select_db($db_name);
  if(mysqli_connect_errno()) {
    echo "Connection Failed: " . mysqli_connect_errno();
    exit();
  }
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

?>