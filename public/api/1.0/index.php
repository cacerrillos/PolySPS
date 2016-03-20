<?php
session_start();
//error_reporting(E_ALL);
require 'Slim/Slim.php';
include_once("../../func/config.func.php");

//include_once('objects/polyquiz.php');
//include_once("objects/polyhouse.php");
include_once("objects/polysession.php");
include_once("objects/polystats.php");
\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();
$mysqli = new mysqli($db_host, $db_user, $db_password);
$mysqli -> select_db($db_name);

$_POST_JSON = json_decode(file_get_contents("php://input"), true);

function isAdmin() {
  return isset($_SESSION['is_admin']);
}
if(isset($_SESSION["is_admin"]) && isset($_GET['uuid'])){
  
  
}

class PolyQueryResult {
  public $status = false;
  public $details;
  public $result;
  public $sub_results = array();
  public function __construct() {

  }
  public function Status() {
    if(count($this->sub_results) == 0) {
      return $this->status;
    } else {
      foreach($this->sub_results as &$sub) {
        if(!$sub->Status()) {
          return false;
        }
      }
      return true;
    }
  }
  public function AddSubResult($result) {
    array_push($this->sub_results, $result);
  }
}

include('poly_quiz.php');

include('poly_quiz_api.php');

include('poly_question.php');

include('poly_question_api.php');

include('poly_answer.php');

include('poly_answer_api.php');

include('poly_quiz_admin_api.php');

include('poly_house.php');

include('poly_house_api.php');

include('poly_session_api.php');

$app->get('/', function() {
  $result = array();
  $result['is_admin'] = isAdmin();
  echo json_encode($result, JSON_PRETTY_PRINT);
});

$app->run();

?>
