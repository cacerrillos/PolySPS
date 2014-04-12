<div class="content">
    <h1>Error!</h1>
    <div id="quizz" style="margin-left:20px">
    	<?
		if(isset($_SESSION['isadmin'])){
			$mysqli = new mysqli($db_host, $db_user, $db_pass);
			$mysqli -> select_db($db_name);
			if(mysqli_connect_errno()) {
				echo "Connection Failed: " . mysqli_connect_errno();
				exit();
			}
			if($stmt = $mysqli->prepare("SELECT * FROM viewers ORDER BY grade, lastname, house")){
				$stmt->bind_result($viewer['uuid'], $viewer['firstname'], $viewer['lastname'], $viewer['email'], $viewer['house'], $viewer['grade']);
				$stmt->execute();
				?>
                <table>
                	<tr>
                		<td>Name</td>
                        <td>Grade/House</td>
                        <td>Email</td>
                    </tr>
                <?
				while($stmt->fetch()){
					?>
                    <tr>
                		<td><? echo $viewer['lastname'].", ".$viewer['firstname']; ?></td>
                        <td><? echo $viewer['grade']."-".$viewer['house']; ?></td>
                        <td><? echo $viewer['email']; ?></td>
                    </tr>
                    <?
				}
				?>
                </table>
                <?
			}
		} else {
			//display login
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