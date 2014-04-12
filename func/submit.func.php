<?
session_start();
include_once("config.func.php");
if(isset($_POST['submit'])){
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$email = $_POST['email'];
	$grade = $_POST['grade'];
	$house = $_POST['house'];
	$uuid = md5($firstname.$lastname.$email);
	if(strlen($firstname)==0 || strlen($lastname)==0 || strlen($email)==0 || strlen($grade)==0 || strlen($house)==0){
		header("Location: ../?p=error&e=1");
	}
	$dateArray = unserialize(base64_decode($_POST['dateArray']));
	for($x = 0; $x < count($dateArray); $x++){
		for($y = 1; $y <= 3; $y++){
			if(strlen($_POST[$dateArray[$x]."-".$y])==0){
				header("Location: ../?p=error&e=1");
				exit();
			}
		}
	}
	//insert person into viewers
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli -> prepare("INSERT INTO viewers (uuid,firstname,lastname,email,house,grade) VALUES (?,?,?,?,?,?)")){
		$stmt -> bind_param("sssssi", $uuid, $firstname, $lastname, $email, $house, $grade);
		$stmt -> execute();
		$stmt -> close();
	} else {
		echo $mysqli->error;
	}
	//insert into each presentation
	for($x = 0; $x < count($dateArray); $x++){
		for($y = 1; $y <= 3; $y++){
			$presUUID = $_POST[$dateArray[$x]."-".$y];
			if($presUUID!="NA"){
				if($stmt = $mysqli -> prepare("INSERT INTO pres_".$presUUID." (uuid,timestamp) VALUES (?,?)")){
					$stmt -> bind_param("ss", $uuid, time());
					$stmt -> execute();
					$stmt -> close();
				} else {
					echo $mysqli->error;
				}
			}
		}
	}
	header("Location: ../?p=success");
	exit();
}
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>