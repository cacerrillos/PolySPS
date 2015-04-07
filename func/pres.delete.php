<?
session_start();
include_once("config.func.php");
if(isset($_SESSION['isadmin'])){
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli->prepare("SELECT * FROM presentations WHERE uuid=?")){
		$stmt->bind_param("s", $_GET['uuid']);
		$stmt->execute();
		$stmt->store_result();
		$num = $stmt->num_rows;
		$stmt->close();
		if($num==1){
			if($stmt = $mysqli->prepare("DELETE FROM presentations WHERE uuid=?;")){
				$stmt->bind_param("s", $_GET['uuid']);
				$stmt->execute();
				$stmt->close();
			}
			if($stmt = $mysqli->prepare("DROP TABLE pres_".$_GET['uuid'])){
				$stmt->execute();
				$stmt->close();
			}
			 
		} else {
			echo $mysqli->error;
			exit();
		}
	} else {
		echo $mysqli->error;
		exit();
	}
	$mysqli->close();
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>