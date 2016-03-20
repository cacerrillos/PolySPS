<?
session_start();
include_once("config.func.php");
if(isset($_SESSION['isadmin'])){
	if(isset($_POST['submit'])){
		$viewer = $_POST['viewer'];
		$pres = $_POST['pres'];
		if(strlen($pres)>0){
			$mysqli = new mysqli($db_host, $db_user, $db_pass);
			$mysqli -> select_db($db_name);
			if($stmt = $mysqli -> prepare("INSERT INTO `pres_".$pres."` (uuid,timestamp) VALUES (?,?)")){
				$stmt -> bind_param("ss", $viewer, time());
				$stmt -> execute();
				$stmt -> close();
			} else {
				echo $mysqli->error;
			}
		}
	}
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>