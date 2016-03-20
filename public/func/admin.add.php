<?
session_start();
include_once("config.func.php");
if(isset($_SESSION['isadmin'])){
	if(isset($_POST['submit']) && strlen($_POST['firstname'])>0 && strlen($_POST['lastname'])>0 && strlen($_POST['house'])>0 && strlen($_POST['topic'])>0 && strlen($_POST['date'])>0 && strlen($_POST['block'])>0 && strlen($_POST['location'])>0){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$house = $_POST['house'];
		$topic = $_POST['topic'];
		$juniors = intval($_POST['juniors']);
		$seniors = intval($_POST['seniors']);
		$date = str_replace("-","",$_POST['date']);
		$block = intval($_POST['block']);
		$location = $_POST['location'];
		$mysqli = new mysqli($db_host, $db_user, $db_pass);
		$mysqli -> select_db($db_name);
		$uuid = md5($firstname.$lastname.$topic.time());
		if(mysqli_connect_errno()) {
			echo "Connection Failed: " . mysqli_connect_errno();
			exit();
		}
		if($stmt = $mysqli -> prepare("INSERT INTO presentations (uuid, 
firstname,lastname,house,topic,date,block,location,juniors,seniors) VALUES (?,?,?,?,?,?,?,?,?,?)")){
			$stmt -> bind_param("ssssssisii", $uuid, $firstname, $lastname, $house, $topic, $date, $block, $location, $juniors, $seniors);
			$stmt -> execute();
			$stmt -> close();
		} else {
			echo $mysqli->error;
		}
		$q = "
		CREATE TABLE `".$db_name."`.`pres_".$uuid."` (
			`uuid` VARCHAR(64) NOT NULL,
			`timestamp` TEXT NULL,
			PRIMARY KEY (`uuid`)
		);";
		if($stmt = $mysqli ->prepare($q)){
			//
			$stmt -> execute();
			$stmt ->close();
		}
		updateDates();
		$mysqli -> close();
	}
} else {	
	header('Location: ' . $_SERVER['HTTP_REFERER']);
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>