<?
session_start();
include_once("config.func.php");
if($_POST['submit']=="Login"){
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli -> prepare("SELECT * FROM adminlogin WHERE username = ? AND password = ?")){
			$stmt -> bind_param("ss", $_POST['username'], md5($_POST['password']));
			$stmt -> execute();
			$stmt -> bind_result($data['username'], $data['passwordHash']);
			$stmt -> store_result();
			$num = $stmt -> num_rows;
			$stmt -> close();
		} else {
			echo $mysqli->error;
		}
	if($num==1){
		$_SESSION['isadmin'] = "set";
		header('Location: ' . $_SERVER['HTTP_REFERER']);
	}
	$mysqli -> close();
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>