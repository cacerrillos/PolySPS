<?
session_start();
include_once("config.func.php");
if($_POST['submit']=="Change" && isset($_SESSION['isadmin'])){
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli -> prepare("SELECT * FROM adminlogin WHERE username = ? AND password = ?")){
			$stmt -> bind_param("ss", $_SESSION['username'], md5($_POST['old']));
			$stmt -> execute();
			$stmt -> bind_result($data['username'], $data['passwordHash']);
			$stmt -> store_result();
			$num = $stmt -> num_rows;
			$stmt -> close();
		} else {
			echo $mysqli->error;
		}
	if($num==1){
		if($stmt = $mysqli -> prepare("UPDATE adminlogin SET password = ? WHERE username = ?")){
			$stmt -> bind_param("ss", md5($_POST['new']), $_SESSION['username']);
			$stmt -> execute();
			$stmt -> close();
		} else {
			echo $mysqli->error;
		}
		header('Location: ' . $_SERVER['HTTP_REFERER']);
	}
	$mysqli -> close();
}
header('Location: ' . $_SERVER['HTTP_REFERER']);


?>