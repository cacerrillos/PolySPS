<?
session_start();
include_once("config.func.php");
if((isset($_GET['by']) && ($_GET['by']=="location" || $_GET['by']=="presentation")) || isset($_GET['pres'])){
	?><head>
    <style type="text/css">
	@media all {
	.page-break	{ display: none; }
}

@media print {
	.page-break	{ display: block; page-break-before: always; }
}
	</style>
    </head>
    <input type="button" onClick="window.print()" value="Print"/>
    <?
	if(isset($_GET['pres'])){
		$mysqli = new mysqli($db_host, $db_user, $db_pass);
		$mysqli -> select_db($db_name);
		if(mysqli_connect_errno()) {
			echo "Connection Failed: " . mysqli_connect_errno();
			exit();
		}
		if($stmt = $mysqli->prepare("SELECT * FROM presentations WHERE uuid=? ORDER BY date, block, location, LOWER(lastname)")){
			$stmt->bind_param("s", $_GET['pres']);
			$stmt->execute();
			$stmt->bind_result($pres['uuid'], $pres['firstname'],$pres['lastname'],$pres['house'],$pres['topic'],$pres['date'],$pres['block'],$pres['location'],$pres['juniors'],$pres['seniors']);
			$stmt -> store_result();
			$num = $stmt -> num_rows;
			if($num==1){
				while($stmt->fetch()){
					$firstname = $pres['firstname'];
					$lastname = $pres['lastname'];
					$house = $pres['house'];
					$topic = $pres['topic'];
					$date = $pres['date'];
					$block = $pres['block'];
					$location = $pres['location'];				
					?>
					<h3>Presentation: <? echo $lastname.", ".$firstname." ".$house." ".$topic; ?></h3><h4>Location: <? echo $pres['location']; ?></h4>
                    <h3>Viewers</h3>
                    <table>
                    <tr>
                    <td>Name</td>
                    <td>Grade/House</td>
                    </tr>
                     <?
			if($stmt = $mysqli->prepare("SELECT * FROM `pres_".$_GET['pres']."`")){
				$stmt->execute();
				$stmt->bind_result($subpres['uuid'], $subpres['timestamp']);
				$viewerArray = array();
				while($stmt->fetch()){
					//viewers
					array_push($viewerArray, $subpres['uuid']);
				}
				$stmt->close();
				for($x = 0; $x < count($viewerArray); $x++){
					if($stmt2 = $mysqli->prepare("SELECT * FROM `viewers` WHERE uuid=? ORDER BY LOWER(lastname)")){
						$stmt2->bind_param("s", $viewerArray[$x]);
						$stmt2->execute();
						$stmt2->bind_result($viewer['uuid'], $viewer['firstname'], $viewer['lastname'], $viewer['email'], $viewer['house'], $viewer['grade']);
						while($stmt2->fetch()){
							?>
                            <tr>
                            <td><? echo $viewer['lastname'].", ".$viewer['firstname']; ?></td>
                            <td><? echo $viewer['grade']."-".$viewer['house']; ?></td>
                            </tr>
                            <?
						}
					}
				}
			}
			?>
            </table>
            <?
        	
            	}
			}
		} else {
			echo $mysqli->error;
		}
		
		?>
    <?
	}
	if($_GET['by']=="location"){
		$mysqli = new mysqli($db_host, $db_user, $db_pass);
		$mysqli -> select_db($db_name);
		if(mysqli_connect_errno()) {
			echo "Connection Failed: " . mysqli_connect_errno();
			exit();
		}
		if($stmt = $mysqli->prepare("SELECT * FROM presentations ORDER BY location, date, block")){
			$stmt->execute();
			$stmt->bind_result($pres['uuid'], $pres['firstname'],$pres['lastname'],$pres['house'],$pres['topic'],$pres['date'],$pres['block'],$pres['location'],$pres['juniors'],$pres['seniors']);
			$uuidArray = array();
			$fnArray = array();
			$lnArray = array();
			$hArray = array();
			$tArray = array();
			$dArray = array();
			$bArray = array();
			$lArray = array();
			while($stmt->fetch()){
				array_push($uuidArray, $pres['uuid']);
				array_push($fnArray, $pres['firstname']);
				array_push($lnArray, $pres['lastname']);
				array_push($hArray, $pres['house']);
				array_push($tArray, $pres['topic']);
				array_push($dArray, $pres['date']);
				array_push($bArray, $pres['block']);
				array_push($lArray, $pres['location']);
			}
			for($x =0; $x <count($uuidArray); $x++){
				?>
                
    <h3><? echo jddayofweek(cal_to_jd(CAL_GREGORIAN, substr($dArray[$x], 4, 2), substr($dArray[$x], 6, 2), substr($dArray[$x], 2, 2)), 1); ?> <? echo jdmonthname(cal_to_jd(CAL_GREGORIAN, substr($dArray[$x], 4, 2), substr($dArray[$x], 6, 2), substr($dArray[$x], 2, 2)), 1); ?> <? echo substr($dArray[$x], 6, 2)." ".substr($dArray[$x], 0, 4); ?><? echo " | Block ".$bArray[$x]." ".$lArray[$x]." ".$lnArray[$x].", ".$fnArray[$x]." | ".$tArray[$x]."<br>"; ?></h3>
                <table>
                	<tr>
                    	<td>Student</td>
                        <td>Grade/House</td>
                    </tr>
                    <?
					if($st = $mysqli->prepare("SELECT uuid FROM `pres_".$uuidArray[$x]."`;")){
						$st->execute();
						$st->store_result();
						$st->bind_result($viewerUUID);
						$viewerArray = array();
						$counter = 0;
						while($st->fetch()){
							array_push($viewerArray, "'".$viewerUUID."'");
							$counter += 1;
						}
						$st->close();
						if($counter>0){
							$ar = join(",", $viewerArray);
							if($st = $mysqli->prepare("SELECT firstname, lastname, grade, house FROM viewers WHERE uuid IN (".$ar.") ORDER BY LOWER(lastname);")){
								$st->execute();
								$st->bind_result($vfn, $vln, $vg, $vh);
								$st->store_result();
								while($st->fetch()){
									?>
                                    <tr>
                                    	<td><? echo $vln.", ".$vfn; ?></td>
                                        <td><? echo $vg."-".$vh; ?></td>
                                    </tr>
                                    <?
								}
							} else {
								echo $mysqli->error;
							}
						}
					} else {
						echo $mysqli->error;
					}
					?>
                </table>
                <div class="page-break"></div>
				<?
			}
		} else {
			echo $mysqli->error;
		}
	}
	if($_GET['by']=="presentation"){
		?>
        
        <?
		$mysqli = new mysqli($db_host, $db_user, $db_pass);
		$mysqli -> select_db($db_name);
		if(mysqli_connect_errno()) {
			echo "Connection Failed: " . mysqli_connect_errno();
			exit();
		}
		if($stmt = $mysqli->prepare("SELECT * FROM presentations ORDER BY date, block, location, LOWER(lastname)")){
			$stmt->execute();
			$stmt->bind_result($pres['uuid'], $pres['firstname'],$pres['lastname'],$pres['house'],$pres['topic'],$pres['date'],$pres['block'],$pres['location'],$pres['juniors'],$pres['seniors']);
			$uuidArray = array();
			$fnArray = array();
			$lnArray = array();
			$hArray = array();
			$tArray = array();
			$dArray = array();
			$bArray = array();
			$lArray = array();
			while($stmt->fetch()){
				array_push($uuidArray, $pres['uuid']);
				array_push($fnArray, $pres['firstname']);
				array_push($lnArray, $pres['lastname']);
				array_push($hArray, $pres['house']);
				array_push($tArray, $pres['topic']);
				array_push($dArray, $pres['date']);
				array_push($bArray, $pres['block']);
				array_push($lArray, $pres['location']);
			}
			for($x =0; $x <count($uuidArray); $x++){
				?>
                <? if($x!=0){ ?><div class="page-break"></div><? } ?>
                <h3><? echo jddayofweek(cal_to_jd(CAL_GREGORIAN, substr($dArray[$x], 4, 2), substr($dArray[$x], 6, 2), substr($dArray[$x], 2, 2)), 1); ?> <? echo jdmonthname(cal_to_jd(CAL_GREGORIAN, substr($dArray[$x], 4, 2), substr($dArray[$x], 6, 2), substr($dArray[$x], 2, 2)), 1); ?> <? echo substr($dArray[$x], 6, 2)." ".substr($dArray[$x], 0, 4); ?><? echo " | Block ".$bArray[$x]." ".$lArray[$x]." ".$lnArray[$x].", ".$fnArray[$x]." | ".$tArray[$x]."<br>"; ?></h3>
                <table>
                	<tr>
                    	<td>Student</td>
                        <td>Grade/House</td>
                    </tr>
                    <?
					if($st = $mysqli->prepare("SELECT uuid FROM `pres_".$uuidArray[$x]."`;")){
						$st->execute();
						$st->store_result();
						$st->bind_result($viewerUUID);
						$viewerArray = array();
						$counter = 0;
						while($st->fetch()){
							array_push($viewerArray, "'".$viewerUUID."'");
							$counter += 1;
						}
						$st->close();
						if($counter>0){
							$ar = join(",", $viewerArray);
							if($st = $mysqli->prepare("SELECT firstname, lastname, grade, house FROM viewers WHERE uuid IN (".$ar.") ORDER BY LOWER(lastname);")){
								$st->execute();
								$st->bind_result($vfn, $vln, $vg, $vh);
								$st->store_result();
								while($st->fetch()){
									?>
                                    <tr>
                                    	<td><? echo $vln.", ".$vfn; ?></td>
                                        <td><? echo $vg."-".$vh; ?></td>
                                    </tr>
                                    <?
								}
							} else {
								echo $mysqli->error;
							}
						}
					} else {
						echo $mysqli->error;
					}
					?>
                </table>
                
				<?
			}
		} else {
			echo $mysqli->error;
		}
	}
} else {
	
}

?>