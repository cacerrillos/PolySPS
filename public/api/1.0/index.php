<?php
if (PHP_SAPI == 'cli-server') {
    // To help the built-in PHP dev server, check if the request was actually for
    // something which should probably be served as a static file
    $file = __DIR__ . $_SERVER['REQUEST_URI'];
    if (is_file($file)) {
        return false;
    }
}

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require __DIR__ . '/../vendor/autoload.php';



session_start();

// Instantiate the app
$settings = require __DIR__ . '/../src/settings.php';
include("../../../config.php");

$config['db']['host'] = $db_host;
$config['db']['user'] = $db_user;
$config['db']['pass'] = $db_pass;
$config['db']['name'] = $db_name;

$app = new \Slim\App($settings);

$container = $app->getContainer();


$container['db'] = new mysqli($db_host, $db_user, $db_pass);
$container['db'] -> select_db($db_name);
$container['is_admin'] = true;
if(mysqli_connect_errno()) {
  echo "Connection Failed: " . mysqli_connect_errno();
}

// Set up dependencies
//require __DIR__ . '/../src/dependencies.php';

// Register middleware
//require __DIR__ . '/../src/middleware.php';

// Register routes
//require __DIR__ . '/../src/routes.php';

// Run app



include("houses_api.php");

include("blocks_api.php");

include("grade_levels_api.php");

include("locations_api.php");

include("dates_api.php");

include("presentations_api.php");

include("limits_api.php");

include("viewers_api.php");

$app->post('/admin/login', function(Request $request, Response $response) {
  session_destroy();
  session_start();

  global $_POST_JSON;

  $result = array();
  $result['status'] = false;
  $result['user'] = $_POST_JSON['user'];
  if(count($_POST_JSON) > 0){
    if($stmt = $this->db -> prepare("SELECT `user_id`, `email` FROM `admin` WHERE email = ? AND password = ? LIMIT 1;")){
      $stmt -> bind_param("ss", $_POST_JSON['user'], md5($_POST_JSON['pass']));
      $stmt -> execute();
      $stmt -> bind_result($data['id'], $data['email']);
      $stmt -> store_result();
      $stmt -> fetch();
      $num = $stmt -> num_rows;
      $stmt -> close();
    } else {
      $result['status_details'] = $this->db->error;
    }
    if($num==1){
      $_SESSION['is_admin'] = "set";
      $_SESSION['email'] = $data['email'];
      //$_SESSION['name'] = $data['name'];
      $_SESSION['dbext'] = $data['id'];
      $_SESSION['admin_id_num'] = $data['id'];
      $_SESSION['permsid'] = $data['permsid'];
      $result['status'] = true;
    }
  }
  $response->getBody()->write(json_encode($result, JSON_PRETTY_PRINT));
  return $response;
});

$app->post('/admin/logout', function(Request $request, Response $response) {
  session_destroy();
  $status = array();
  $status['status'] = true;
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});


$app->get('/admin/', function(Request $request, Response $response) {
  $data = array();
  if(isset($_SESSION["is_admin"])) {
    $data['is_admin'] = true;
  } else {
    $data['is_admin'] = false;
  }
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});

$app->get('/admin/login', function(Request $request, Response $response) {

  return $response;
});

$app->get('/admin/logout', function(Request $request, Response $response) {

  return $response;
});


$app->get('/', function (Request $request, Response $response) {
    $response->getBody()->write(json_encode(true, JSON_PRETTY_PRINT));

    return $response;
});

/*

*/
$app->run();
