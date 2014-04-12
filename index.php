<?
session_start();

error_reporting(E_ALL);
ini_set('display_errors', '1');

include_once("func/config.func.php");
if(isset($_GET['p'])){
	$page = $_GET['p'];
} else {
	$page = "home";
}
include("inc/header.inc.php");
if($page=="admin"){
	include("inc/admin.inc.php");
} else if($page=="pres"){
	include("inc/admin.pres.php");
} else if($page=="error"){
	include("inc/error.inc.php");
} else if($page=="success"){
	include("inc/success.inc.php");
} else if($page=="viewers"){
	include("inc/admin.viewers.php");
} else {
	include("inc/home.inc.php");
}
include("inc/footer.inc.php");
?>