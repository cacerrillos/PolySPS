<div class="content">
    
<?

	$uuid = $_GET['uuid'];
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli->prepare("SELECT * FROM viewers WHERE uuid=?")){
		$stmt->bind_param("s", $uuid);
		$stmt->execute();
		$stmt->bind_result($viewer['uuid'], $viewer['firstname'], $viewer['lastname'], $viewer['email'], $viewer['house'], $viewer['grade']);
		$firstname = $viewer['firstname'];
		$lastname = $viewer['lastname'];
		$email = $viewer['email'];
		$house = $viewer['house'];
		$grade = $viewer['grade'];
		$stmt -> store_result();
		$num = $stmt -> num_rows;
		while($stmt->fetch()){
			$viewerr = $viewer;
		}
		$stmt->close();
		$viewer = $viewerr;
		unset($viewerr);
		if($num==1){
			?>
            <h3>Viewer: <? echo $viewer['lastname'].", ".$viewer['firstname']." ".$viewer['grade']."-".$viewer['house'];?>
            <?
			if(isset($_SESSION['isadmin'])){
				echo " ".$viewer['email'];
			}
			?>
            </h3>
            <div id="quizz" style="margin-left:20px">
            <div class="dontprint">
            <input type="button" onClick="window.print()" value="Print This Page"/>
    
    <? if(isset($_SESSION['isadmin'])){ ?>
    <h3 style="margin-bottom:0;">Add to presentation</h3>
    <form action="func/admin.addtopres.php" method="post">
    	<input type="hidden" name="viewer" value="<? echo $viewer['uuid']; ?>" />
        <select name="pres">
        	<option value=""></option>
        	<?
			if($stmt = $mysqli->prepare("SELECT uuid,firstname,lastname,topic FROM presentations ORDER BY LOWER(lastname);")){
				$stmt->execute();
				$stmt->bind_result($thisUUID, $thisFirstname, $thisLastname, $thisTopic);
				$stmt->store_result();
				while($stmt->fetch()){
					?>
                    <option value="<? echo $thisUUID; ?>"><? echo $thisLastname.", ".$thisFirstname." - ".$thisTopic; ?></option>
                    <?
				}
			}
			?>
        </select>
        <input type="submit" name="submit" value="Add" />
    </form>
    <? } ?>
    </div>
			<?
			$presViewArray = array();
			if($stmt = $mysqli->prepare("SELECT uuid FROM presentations;")){
				$stmt->execute();
				$stmt->bind_result($uuid);
				$stmt->store_result();
				$uuidArray = array();
				while($stmt->fetch()){
					array_push($uuidArray, $uuid);
				}
				$stmt->close();
				$counterr = 0;
				for($x = 0; $x < count($uuidArray); $x++){
					if($stmt = $mysqli->prepare("SELECT uuid FROM `pres_".$uuidArray[$x]."` WHERE uuid=?")){
						$stmt->bind_param("s", $viewer['uuid']);
						$stmt->execute();
						$stmt->store_result();
						$num = $stmt->num_rows;
						if($num==1){
							array_push($presViewArray, "'".$uuidArray[$x]."'");
							$counterr += 1;
						}
						$stmt->close();
					}
				}
				$ar = join(",", $presViewArray);
				if($counterr>0){
					if($stmt = $mysqli->prepare("SELECT * FROM presentations WHERE uuid IN (".$ar.") ORDER BY date, block")){
						$stmt->execute();
						$stmt->bind_result($pres['uuid'], $pres['firstname'],$pres['lastname'],$pres['house'],$pres['topic'],$pres['date'],$pres['block'],$pres['location'],$pres['juniors'],$pres['seniors']);
						$stmt->store_result();
						?>
						<table>
								<tr>
									<td>Date/Block</td>
									<td>Presenter</td>
									<td>Topic</td>
									<td>Location</td>
									<?
									if(isset($_SESSION['isadmin'])){
										?>
										<td>Remove</td>
										<?
									}
									?>
								</tr>
						<?
						while($stmt->fetch()){
							?>
								<tr>
									<td><? echo substr($pres['date'], 4, 2)."/".substr($pres['date'], 6, 2)."-".$pres['block']; ?></td>
									<td><? echo $pres['lastname'].", ".$pres['firstname']; ?></td>
									<td><a href="?p=pres&uuid=<? echo $pres['uuid']; ?>"><? echo $pres['topic']; ?></a></td>
									<td><? echo $pres['location']; ?></td>
									<?
									if(isset($_SESSION['isadmin'])){
										?>
										<td><a href="func/removeviewer.func.php?pres=<? echo $pres['uuid']; ?>&viewer=<? echo $viewer['uuid']; ?>">Remove</a></td>
										<?
									}
									?>
								</tr>
	
							<?
						}
						?>
												</table>
						<?
					} else {
						echo $mysqli->error;
					}
				} else {
					?>
                    <h4>This Viewer hasn't signed up for any presentations!</h4>
                    <?
				}
				
			}
			//select presentations uuid where days and blocks 1-4
			//select from those where uuid is there
			//echo
			?>
			<?
		}

	}
?>
</div>
</div>