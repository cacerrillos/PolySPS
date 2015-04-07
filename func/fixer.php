<?
session_start();
include_once("config.func.php");
$mysqli = new mysqli($db_host, $db_user, $db_pass);
$mysqli -> select_db($db_name);
if(mysqli_connect_errno()) {
	echo "Connection Failed: " . mysqli_connect_errno();
	exit();
}
$uuids = array();
if($stmt = $mysqli->prepare("SELECT uuid,firstname,lastname FROM viewers;")){
	$stmt->execute();
	$stmt->bind_result($uuid, $fn, $ln);
	while($stmt->fetch()){
		array_push($uuids, $uuid);
		$viewers[$uuid]['fn'] = $fn;
		$viewers[$uuid]['ln'] = $ln;
	}
	$stmt->close();
} else {
	echo $mysqli->error;
}
for($x = 0; $x < count($uuids); $x++){
	if($stmt = $mysqli->prepare("UPDATE viewers SET firstname=?, lastname=? WHERE uuid=?")){
		$stmt->bind_param("sss", ucwords(strtolower($viewers[$uuids[$x]]['fn'])),ucwords(strtolower($viewers[$uuids[$x]]['ln'])),$uuids[$x]);
		$stmt->execute();
	} else {
		echo $mysqli->error;
	}
}
$mysqli->close();
var_dump($uuids);
?>