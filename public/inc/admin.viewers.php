<div class="content">
	<?
		$mysqli = new mysqli($db_host, $db_user, $db_pass);
		$mysqli -> select_db($db_name);
		if(mysqli_connect_errno()) {
			echo "Connection Failed: " . mysqli_connect_errno();
			exit();
		}
		$all = 0;
		$juniors = 0;
		$seniors = 0;
		if($stmt = $mysqli->prepare("SELECT * FROM viewers WHERE grade='11'")){
			$stmt->execute();
			$stmt->store_result();
			$num = $stmt->num_rows;
			$juniors = $num;
			$stmt->close();
		} else {
			echo $mysqli->error;
		}
		if($stmt = $mysqli->prepare("SELECT * FROM viewers WHERE grade='12'")){
			$stmt->execute();
			$stmt->store_result();
			$num = $stmt->num_rows;
			$seniors = $num;
			$stmt->close();
		} else {
			echo $mysqli->error;
		}
		if($stmt = $mysqli->prepare("SELECT * FROM viewers")){
			$stmt->execute();
			$stmt->store_result();
			$num = $stmt->num_rows;
			$all = $num;
			$stmt->close();
		} else {
			echo $mysqli->error;
		}
		$mysqli->close();
	if(isset($_GET['vis'])){
		if($_GET['vis']=="11" || $_GET['vis']=="12"){
			?>
            <h3>All <? echo $_GET['vis']."th"; ?> Grade Viewers</h3>
            <?
		} else {
			?>
            <h3>All Viewers</h3>
            <?
		}
	} else {
		?>
        <h3>All Viewers</h3>
        <?
	}
	?>
    <div id="quizz" style="margin-left:20px">
    <div class="dontprint">
    <input type="button" onClick="window.print()" value="Print This Page"/><br />
    </div>
    <?
	if(isset($_GET['vis'])){
		if($_GET['vis']=="11"){
			$que = "SELECT * FROM viewers WHERE grade='11' ORDER BY grade, LOWER(lastname), house";
			?>
            <a href="?p=viewers">All (<? echo $all; ?>)</a> | 11th Grade Only (<? echo $juniors; ?>) | <a href="?p=viewers&vis=12">12th Grade Only (<? echo $seniors; ?>)</a>
            <?
		} else if($_GET['vis']=="12"){
			$que = "SELECT * FROM viewers WHERE grade='12' ORDER BY grade, LOWER(lastname), house";
			?>
            <a href="?p=viewers">All (<? echo $all; ?>)</a> | <a href="?p=viewers&vis=11">11th Grade Only (<? echo $juniors; ?>)</a> | 12th Grade Only (<? echo $seniors; ?>)
            <?
		} else {
			$que = "SELECT * FROM viewers ORDER BY LOWER(lastname), house";
			?>
             All (<? echo $all; ?>) | <a href="?p=viewers&vis=11">11th Grade Only (<? echo $juniors; ?>)</a> | <a href="?p=viewers&vis=12">12th Grade Only (<? echo $seniors; ?>)</a>
            <?
		}
		?>
        <?
	} else {
		$que = "SELECT * FROM viewers ORDER BY LOWER(lastname), house";
		?>
        All (<? echo $all; ?>) | <a href="?p=viewers&vis=11">11th Grade Only (<? echo $juniors; ?>)</a> | <a href="?p=viewers&vis=12">12th Grade Only (<? echo $seniors; ?>)</a>
        <?
	}
	?>
    	<?
			$mysqli = new mysqli($db_host, $db_user, $db_pass);
			$mysqli -> select_db($db_name);
			if(mysqli_connect_errno()) {
				echo "Connection Failed: " . mysqli_connect_errno();
				exit();
			}
			if($stmt = $mysqli->prepare($que)){
				$stmt->bind_result($viewer['uuid'], $viewer['firstname'], $viewer['lastname'], $viewer['email'], $viewer['house'], $viewer['grade']);
				$stmt->execute();
				?>
                <table>
                	<tr>
                		<td>Name</td>
                        <td>Grade/House</td>
                        <? /* if(isset($_SESSION['isadmin'])){ ?><td>Email</td><?  } */ ?>
                        <? if(isset($_SESSION['isadmin'])){ ?><td>Delete</td><? } ?>
                    </tr>
                <?
				while($stmt->fetch()){
					?>
                    <tr>
                		<td><a href="?p=viewer&uuid=<? echo $viewer['uuid']; ?>"><? echo $viewer['lastname'].", ".$viewer['firstname']; ?></a></td>
                        <td><? echo $viewer['grade']."-".$viewer['house']; ?></td>
                        <? /* if(isset($_SESSION['isadmin'])){ ?><td><? echo $viewer['email']; ?></td><? } */?>
                        <? if(isset($_SESSION['isadmin'])){ ?><td><a href="func/removeviewer.func.php?viewer=<? echo $viewer['uuid']; ?>">Delete</a></td><? } ?>
                    </tr>
                    <?
				}
				?>
                </table>
                <?
			}

			?>
	</div>
</div>