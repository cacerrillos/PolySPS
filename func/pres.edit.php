<?
session_start();
include_once("config.func.php");
if(isset($_SESSION['isadmin'])){
	if(isset($_POST['submit']) && strlen($_POST['firstname'])>0 && strlen($_POST['lastname'])>0 && strlen($_POST['house'])>0 && strlen($_POST['topic'])>0 && strlen($_POST['date'])>0 && strlen($_POST['block'])>0 && strlen($_POST['location'])>0){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$house = $_POST['house'];
		$topic = $_POST['topic'];
		$uuid = $_POST['uuid'];
		$juniors = intval($_POST['juniors']);
		$seniors = intval($_POST['seniors']);
		$date = str_replace("-","",$_POST['date']);
		$block = intval($_POST['block']);
		$location = $_POST['location'];
		$mysqli = new mysqli($db_host, $db_user, $db_pass);
		$mysqli -> select_db($db_name);
		if(mysqli_connect_errno()) {
			echo "Connection Failed: " . mysqli_connect_errno();
			exit();
		}
		if($stmt = $mysqli -> prepare("UPDATE presentations SET firstname = ?,lastname = ?,house = ?,topic = ?,date = ?,block = ?,location = ?,juniors = ?,seniors = ? WHERE uuid=?")){
			$stmt -> bind_param("sssssisiis", $firstname, $lastname, $house, $topic, $date, $block, $location, $juniors, $seniors, $uuid);
			$stmt -> execute();
			$stmt -> close();
		} else {
			echo $mysqli->error;
		}
		$mysqli -> close();
	}
} else {	
	header('Location: ' . $_SERVER['HTTP_REFERER']);
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>