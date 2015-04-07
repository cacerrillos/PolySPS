<?
function numberOfJuniors($uuid){
	global $db_host, $db_user, $db_pass, $db_name;
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli -> prepare("SELECT * FROM `pres_".$uuid."`")){
		$stmt -> execute();
		$stmt -> bind_result($subpres['uuid'], $pres['timestamp']);
		$stmt -> store_result();
		$counter = 0;
		while($stmt->fetch()){
			if($stmt2 = $mysqli->prepare("SELECT * FROM `viewers` WHERE uuid=? AND grade='11'")){
				$stmt2->bind_param("s", $subpres['uuid']);
				$stmt2->execute();
				$stmt2->bind_result($viewer['uuid'], $viewer['firstname'], $viewer['lastname'], $viewer['email'], $viewer['house'], $viewer['grade']);
				$stmt2->store_result();
				$thisnum = $stmt2->num_rows;
				$counter += $thisnum;
			}
		}
		$stmt -> close();
	} else {
		echo $mysqli->error;
	}
	$mysqli -> close();
	return $counter;
}
function maxJuniors($uuid){
	global $db_host, $db_user, $db_pass, $db_name;
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt2 = $mysqli->prepare("SELECT * FROM presentations WHERE uuid = ?")){
		$stmt2->bind_param("s", $uuid);
		$stmt2->execute();
		$stmt2->bind_result($pres['uuid'], $pres['firstname'],$pres['lastname'],$pres['house'],$pres['topic'],$pres['date'],$pres['block'],$pres['location'],$pres['juniors'],$pres['seniors']);
		$stmt2->store_result();
		while($stmt2->fetch()){
			return $pres['juniors'];
		}
		$stmt -> close();
	} else {
		echo $mysqli->error;
	}
	$mysqli -> close();
}
function maxSeniors($uuid){
	global $db_host, $db_user, $db_pass, $db_name;
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt2 = $mysqli->prepare("SELECT * FROM presentations WHERE uuid = ?")){
		$stmt2->bind_param("s", $uuid);
		$stmt2->execute();
		$stmt2->bind_result($pres['uuid'], $pres['firstname'],$pres['lastname'],$pres['house'],$pres['topic'],$pres['date'],$pres['block'],$pres['location'],$pres['juniors'],$pres['seniors']);
		$stmt2->store_result();
		while($stmt2->fetch()){
			return $pres['seniors'];
		}
		$stmt -> close();
	} else {
		echo $mysqli->error;
	}
	$mysqli -> close();
}
function numberOfSeniors($uuid){
	global $db_host, $db_user, $db_pass, $db_name;
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli -> prepare("SELECT * FROM `pres_".$uuid."`")){
		$stmt -> execute();
		$stmt -> bind_result($subpres['uuid'], $pres['timestamp']);
		$stmt -> store_result();
		$counter = 0;
		while($stmt->fetch()){
			if($stmt2 = $mysqli->prepare("SELECT * FROM `viewers` WHERE uuid=? AND grade='12'")){
				$stmt2->bind_param("s", $subpres['uuid']);
				$stmt2->execute();
				$stmt2->bind_result($viewer['uuid'], $viewer['firstname'], $viewer['lastname'], $viewer['email'], $viewer['house'], $viewer['grade']);
				$stmt2->store_result();
				$thisnum = $stmt2->num_rows;
				$counter += $thisnum;
			}
		}
		$stmt -> close();
	} else {
		echo $mysqli->error;
	}
	$mysqli -> close();
	return $counter;
}
function siteEnabled(){
	global $db_host, $db_user, $db_pass, $db_name;
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli -> prepare("SELECT * FROM settings WHERE entrykey='siteenabled'")){
		$stmt -> execute();
		$stmt -> bind_result($settings['key'], $settings['value']);
		$stmt -> store_result();
		while($stmt->fetch()){
			if(intval($settings['value'])==1){
				return true;
			} else {
				return false;
			}
		}
		$stmt -> close();
	} else {
		echo $mysqli->error;
	}
	$mysqli -> close();
}
function setSiteEnabled($int){
	global $db_host, $db_user, $db_pass, $db_name;
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	$siteEnabled = siteEnabled();
	if($siteEnabled){
		$var = "0";
		if($stmt = $mysqli -> prepare("UPDATE settings SET entryvalue=? WHERE entrykey='siteenabled'")){
			$stmt -> bind_param("s", $var);
			$stmt -> execute();
			$stmt -> close();
		} else {
			echo $mysqli->error;
		}
		$mysqli -> close();
	} else {
		$var = "1";
		if($stmt = $mysqli -> prepare("UPDATE settings SET entryvalue=? WHERE entrykey='siteenabled'")){
			$stmt -> bind_param("s", $var);
			$stmt -> execute();
			$stmt -> close();
		} else {
			echo $mysqli->error;
		}
		$mysqli -> close();
	}
	
}
function lines(){
$string = shell_exec("find . -name '*.php' -not -path './securimage/*' -not -path './phpmyadmin/*' | xargs wc -l");
preg_match_all('/[0-9]+/',$string,$matches);
$linesofcode = $matches[0][count($matches[0])-1];
return $linesofcode;
}
function locationFormat($location){
	switch ($location){
		case "11N":
			return "11-Eng";
			break;
		case "11S":
			return "11-Sci";
			break;
		case "11E":
			return "11-Math";
			break;
		case "11W":
			return "11-SS";
			break;
		case "12N":
			return "12-Eng";
			break;
		case "12S":
			return "12-Sci";
			break;
		case "12E":
			return "12-Math";
			break;
		case "12W":
			return "12-SS";
			break;
		default:
			return $location;
	}
}
?>