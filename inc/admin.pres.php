<div class="content">

<?

	
	$uuid = $_GET['uuid'];
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli->prepare("SELECT * FROM presentations WHERE uuid=?")){
		$stmt->bind_param("s", $uuid);
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
    <h3>Presentation: <? echo $lastname.", ".$firstname." ".$house." | ".$topic; ?></h3>
    <h4 style="margin-bottom:0">Location: <? echo $pres['location']; ?></h4>
    <h4>Date: <? echo jddayofweek(cal_to_jd(CAL_GREGORIAN, substr($pres['date'], 4, 2), substr($pres['date'], 6, 2), substr($pres['date'], 2, 2)), 1); ?> <? echo jdmonthname(cal_to_jd(CAL_GREGORIAN, substr($pres['date'], 4, 2), substr($pres['date'], 6, 2), substr($pres['date'], 2, 2)), 1); ?> <? echo substr($pres['date'], 6, 2)." ".substr($pres['date'], 0, 4)." | Block ".$pres['block']; ?></h4>
        <div id="quizz" style="margin-left:20px">
        <?
		if(isset($_SESSION['isadmin'])){
			?>
		<div class="dontprint">
                <form action="func/pres.edit.php" method="post">
                	<input type="hidden" name="uuid" value="<? echo $pres['uuid']; ?>" />
                    Firstname:<input type="text" name="firstname" value="<? echo $firstname; ?>"  autocomplete="off"/><br />
                    Lastname:<input type="text" name="lastname" value="<? echo $lastname; ?>"  autocomplete="off"/><br />
                    House: <select name="house">
                        <option value=""></option>
                        <option value="N" <? if($house=="N"){ echo "selected"; } ?>>North</option>
                        <option value="S" <? if($house=="S"){ echo "selected"; } ?>>South</option>
                        <option value="E" <? if($house=="E"){ echo "selected"; } ?>>East</option>
                        <option value="W" <? if($house=="W"){ echo "selected"; } ?>>West</option>
                    </select><br />
                    Topic:<input type="text" name="topic" autocomplete="off" value="<? echo $topic; ?>" autocomplete="off"><br>
                    Date:<input type="date" name="date" value="<? echo date("Y-m-d", strtotime($date)); ?>" autocomplete="off"><br>
                    Block:
                    <select name="block">
                        <option value=""></option>
                        <option value="1" <? if($block=="1"){ echo "selected"; } ?>>1st</option>
                        <option value="2" <? if($block=="2"){ echo "selected"; } ?>>2nd</option>
                        <option value="3" <? if($block=="3"){ echo "selected"; } ?>>3rd</option>
                        <option value="4" <? if($block=="4"){ echo "selected"; } ?>>4th</option>
                    </select>
                    Location:
                    <select name="location">
                        <option value=""></option>
                        <option value="Eng-11" <? if($location=="Eng-11"){ echo "selected"; } ?>>11th English</option>
                        <option value="Eng-12" <? if($location=="Eng-12"){ echo "selected"; } ?>>12th English</option>
                        <option value="Math-11" <? if($location=="Math-11"){ echo "selected"; } ?>>11th Math</option>
                        <option value="Math-12" <? if($location=="Math-12"){ echo "selected"; } ?>>12th Math</option>
                        <option value="Sci-11" <? if($location=="Sci-11"){ echo "selected"; } ?>>11th Science</option>
                        <option value="Sci-12" <? if($location=="Sci-12"){ echo "selected"; } ?>>12th Science</option>
                        <option value="SS-11" <? if($location=="SS-11"){ echo "selected"; } ?>>11th Social Science</option>
                        <option value="SS-12" <? if($location=="SS-12"){ echo "selected"; } ?>>12th Social Science</option>
                    </select>
                    <br>Max Juniors: <select name="juniors">
					<?
                    for($x = 1; $x <= 20; $x++){
						if($pres['juniors']==$x){
							$var = "selected";
						} else {
							$var = "";
						}
                    	echo '<option value="'.$x.'" '.$var.'>'.$x.'</option>';
                    }
                    ?>
                    </select>
                    Max Seniors: <select name="seniors">
                    <?
                    for($x = 1; $x <= 20; $x++){
						if($pres['seniors']==$x){
							$var = "selected";
						} else {
							$var = "";
						}
						echo '<option value="'.$x.'" '.$var.'>'.$x.'</option>';
                    }
                    ?>
                    </select><br /><br>
                    <input type="submit" name="submit" value="Edit" />
                </form>
                <h3>Add Viewer</h3>
                <form action="func/admin.addtopres.php" method="post">
                <input type="hidden" name="pres" value="<? echo $pres['uuid']; ?>" />
                <select name="viewer">
                	<option value=""></option>
                    <?
					if($st = $mysqli->prepare("SELECT uuid,lastname,firstname FROM viewers;")){
						$st->execute();
						$st->bind_result($vuuid, $vlastname, $vfirstname);
						$st->store_result();
						while($st->fetch()){
							?>
                            <option value="<? echo $vuuid; ?>"><? echo $vlastname.", ".$vfirstname; ?></option>
                            <?
						}
					} else {
						echo $mysqli->error;
					}
					?>
                    </select>
                    <input type="submit" name="submit" value="Add" />
		</form>
		</div>
                <?
		}
			}
			?>
            <h3>Viewers</h3>
	<div class="dontprint">
            <input type="button" onClick="window.print()" value="Print This Page"/>
</div>
            <table>
            <tr>
            <td>Name</td>
            <td>Grade/House</td>
            
            <? if(isset($_SESSION['isadmin'])){
				?>
                <td>Email</td>
            <td>Remove</td>
            <?
			}
			?>
            </tr>
            <?
			if($stmt = $mysqli->prepare("SELECT * FROM `pres_".$uuid."`")){
				$stmt->execute();
				$stmt->bind_result($subpres['uuid'], $subpres['timestamp']);
				$viewerArray = array();
				$counterr = 0;
				while($stmt->fetch()){
					//viewers
					array_push($viewerArray, "'".$subpres['uuid']."'");
					$counterr += 1;
				}
				$stmt->close();
				$ar = join(",", $viewerArray);
				if($counterr>0){
						if($stmt2 = $mysqli->prepare("SELECT * FROM `viewers` WHERE uuid IN (".$ar.") ORDER BY grade, LOWER(lastname)")){
							$stmt2->execute();
							$stmt2->bind_result($viewer['uuid'], $viewer['firstname'], $viewer['lastname'], $viewer['email'], $viewer['house'], $viewer['grade']);
							while($stmt2->fetch()){
								?>
								<tr bgcolor="<? if($viewer['grade']==11){echo '#ececea'; }?>">
								<td><a href="?p=viewer&uuid=<? echo $viewer['uuid']; ?>"><? echo $viewer['lastname'].", ".$viewer['firstname']; ?></a></td>
								<td><? echo $viewer['grade']."-".$viewer['house']; ?></td>
								
								<? if(isset($_SESSION['isadmin'])){
					?>
					<td><? echo $viewer['email']; ?></td>
								<td><a href="func/removeviewer.func.php?pres=<? echo $uuid; ?>&viewer=<? echo $viewer['uuid']; ?>">Remove</a></td>
								<?
								}
								?>
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
?>
</div>
</div>