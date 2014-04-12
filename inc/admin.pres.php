<div class="content">
    <h1>Admin: Presentation Management</h1>
    <div id="quizz" style="margin-left:20px">
<?
if(isset($_SESSION['isadmin'])){
	
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
				echo $lastname.", ".$firstname." ".$house." ".$topic."<br>";
			}
			?>
            <table>
            <tr>
            <td>Name</td>
            <td>Grade/House</td>
            <td>Email</td>
            <td>Remove</td>
            </tr>
            <?
			if($stmt = $mysqli->prepare("SELECT * FROM `pres_".$uuid."`")){
				$stmt->execute();
				$stmt->bind_result($subpres['uuid'], $subpres['timestamp']);
				$viewerArray = array();
				while($stmt->fetch()){
					//viewers
					array_push($viewerArray, $subpres['uuid']);
				}
				$stmt->close();
				for($x = 0; $x < count($viewerArray); $x++){
					if($stmt2 = $mysqli->prepare("SELECT * FROM `viewers` WHERE uuid=? ORDER BY lastname")){
						$stmt2->bind_param("s", $viewerArray[$x]);
						$stmt2->execute();
						$stmt2->bind_result($viewer['uuid'], $viewer['firstname'], $viewer['lastname'], $viewer['email'], $viewer['house'], $viewer['grade']);
						while($stmt2->fetch()){
							?>
                            <tr>
                            <td><? echo $viewer['lastname'].", ".$viewer['firstname']; ?></td>
                            <td><? echo $viewer['grade']."-".$viewer['house']; ?></td>
                            <td><? echo $viewer['email']; ?></td>
                            <td><a href="func/removeviewer.func.php?pres=<? echo $uuid; ?>&viewer=<? echo $viewer['uuid']; ?>">Remove</a></td>
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
	?>
	<form action="func/admin.login.php" method="post">
        Username:<input type="text" name="username"><br>
        Password:<input type="password" name="password"><br>
        <input type="submit" name="submit" value="Login">
    </form>
	<?
}

?>
</div>
</div>