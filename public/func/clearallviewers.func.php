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
	if($stmt = $mysqli->prepare("SELECT * FROM presentations")){
		$stmt->execute();
		$stmt->bind_result($pres['uuid'], $pres['firstname'],$pres['lastname'],$pres['house'],$pres['topic'],$pres['date'],$pres['block'],$pres['location'],$pres['juniors'],$pres['seniors']);
		$presArray = array();
		while($stmt->fetch()){
			array_push($presArray, $pres['uuid']);
		}
		$stmt->close();
		for($x = 0; $x < count($presArray); $x++){
			if($stmt2 = $mysqli->prepare("TRUNCATE TABLE `pres_".$presArray[$x]."`")){
				$stmt2->execute();
				$stmt2->close();
			}
		}
		if($stmt3 = $mysqli->prepare("TRUNCATE TABLE `viewers`")){
			$stmt3->execute();
			$stmt3->close();
		}
	}
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>