<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

class Location {
  public $location_id;
  public $location_name;
  public function __construct($location_id, $location_name) {
    $this->location_id = $location_id;
    $this->location_name = $location_name;
  }
}

$app->get('/locations/{location_id}', function (Request $request, Response $response) {
  global $db_host, $db_user, $db_pass, $db_name;
  $mysqli = new mysqli($db_host, $db_user, $db_pass);
  $mysqli -> select_db($db_name);
  if(mysqli_connect_errno()) {
    echo "Connection Failed: " . mysqli_connect_errno();
    exit();
  }
  $location_id = $request->getAttribute('location_id');
  if($stmt = $mysqli -> prepare("SELECT `location_name` FROM `locations` WHERE `location_id` = ? LIMIT 1;")) {
    $stmt->bind_param("i", intval($location_id));
    $stmt->execute();
    $stmt->bind_result($location_name);
    while($stmt->fetch()) {
      $response->getBody()->write(json_encode(new Location($location_id, $location_name), JSON_PRETTY_PRINT));
    }

  } else {
    $response->getBody()->write($mysqli->error);
  }
    
    

  return $response;
});

?>