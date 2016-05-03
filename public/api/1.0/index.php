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
$config['db']['port'] = $db_port;
$config['db']['user'] = $db_user;
$config['db']['pass'] = $db_pass;
$config['db']['name'] = $db_name;

$app = new \Slim\App($settings);

$container = $app->getContainer();


$container['db'] = new mysqli($db_host, $db_user, $db_pass, $db_name, $db_port);

$container['is_admin'] = isset($_SESSION['is_admin']);

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

include("settings_api.php");

$set_tings = array();
$set_tings['enabled11'] = GetSetting($container['db'], "enabled11");
$set_tings['enabled12'] = GetSetting($container['db'], "enabled12");

function can_register($grade_id) {
  global $set_tings;
  if($grade_id == 1) {
    return $set_tings['enabled11']->entry_value == "1";
  } else if($grade_id == 2) {
    return $set_tings['enabled12']->entry_value == "1";
  }
  return false;
}

include("houses_api.php");

include("blocks_api.php");

include("grade_levels_api.php");

include("locations_api.php");

include("dates_api.php");

include("presentations_api.php");

include("limits_api.php");

include("viewers_api.php");

include("registrations_api.php");

/*        */

$app->get('/admin/', function(Request $request, Response $response) {
  $data = array();
  $data['is_admin'] = $this->is_admin;
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});

$app->map(['GET', 'POST'], '/admin/logout', function(Request $request, Response $response, $args) {
  session_destroy();
  $status = array();
  $status['status'] = true;
  $response->getBody()->write(json_encode($status, JSON_PRETTY_PRINT));
  return $response;
});

$app->post('/admin/login', function(Request $request, Response $response) {
  session_destroy();
  session_start();


  $result = array();
  $post_data = $request->getParsedBody();
  $result['status'] = false;
  $result['user'] = $post_data['user'];
  if(isset($post_data['user']) && isset($post_data['pass'])){
    if($stmt = $this->db -> prepare("SELECT `id`, `email` FROM `admin` WHERE email = ? AND password = ? LIMIT 1;")){
      $stmt -> bind_param("ss", $post_data['user'], md5($post_data['pass']));
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
      $_SESSION['admin_id_num'] = $data['id'];
      $result['status'] = true;
    }
  }
  $response->getBody()->write(json_encode($result, JSON_PRETTY_PRINT));
  return $response;
});


$app->get('/', function (Request $request, Response $response) {
  $data = array();
  $data['is_admin'] = $this->is_admin;
  $response->getBody()->write(json_encode($data, JSON_PRETTY_PRINT));
  return $response;
});

/*

*/
$app->run();
