<?
session_start();
include_once("config.func.php");
if(isset($_SESSION['isadmin'])){
	if(isset($_GET['pres']) && isset($_GET['viewer'])){
		//remove from one presentation
		$mysqli = new mysqli($db_host, $db_user, $db_pass);
		$mysqli -> select_db($db_name);
		if(mysqli_connect_errno()) {
			echo "Connection Failed: " . mysqli_connect_errno();
			exit();
		}
		if($stmt = $mysqli->prepare("SELECT * FROM presentations WHERE uuid=?")){
			$stmt->bind_param("s", $_GET['pres']);
			$stmt->execute();
			$stmt->store_result();
			$num = $stmt->num_rows;
			$stmt->close();
			if($num==1){
				if($stmt = $mysqli->prepare("DELETE FROM `pres_".$_GET['pres']."` WHERE uuid=?;")){
					$stmt->bind_param("s", $_GET['viewer']);
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
	} else if(isset($_GET['viewer'])){
		//remove completely
		$mysqli = new mysqli($db_host, $db_user, $db_pass);
		$mysqli -> select_db($db_name);
		if(mysqli_connect_errno()) {
			echo "Connection Failed: " . mysqli_connect_errno();
			exit();
		}
		if($stmt = $mysqli->prepare("SELECT uuid FROM presentations;")){
			$stmt->execute();
			$stmt->bind_result($thisUUID);
			$stmt->store_result();
			$uuidArray = array();
			while($stmt->fetch()){
				array_push($uuidArray, $thisUUID);
			}
			$stmt->close();
			$errorr = false;
			for($x = 0; $x < count($uuidArray); $x++){
				if($stmt = $mysqli->prepare("DELETE FROM `pres_".$uuidArray[$x]."` WHERE uuid=?")){
					$stmt->bind_param("s", $_GET['viewer']);
					$stmt->execute();
				} else {
					$errorr = true;
					echo $mysqli->error;
				}
			}
			if(!$errorr){
				if($stmt = $mysqli->prepare("DELETE FROM viewers WHERE uuid=?")){
					$stmt->bind_param("s", $_GET['viewer']);
					$stmt->execute();
				} else {
					echo $mysqli->error;
				}
			}
			
		} else {
			echo $mysqli->error;
		}
	}
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>