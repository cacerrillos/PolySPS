<div class="content">
    <h1>Admin</h1>
    <div id="quizz" style="margin-left:20px">
<?
if(isset($_SESSION['isadmin'])){
	//display admin tools
	?>
    <br><br>
    <h3>Add Presentation</h3>
    <form action="func/admin.add.php" method="post">
    	Firstname:<input type="text" name="firstname" autocomplete="off"><br>
        Lastname:<input type="text" name="lastname" autocomplete="off"><br>
        House:
        <select name="house">
        	<option value=""></option>
            <option value="N">North</option>
            <option value="S">South</option>
            <option value="E">East</option>
            <option value="W">West</option>
        </select><br />
        Topic:<input type="text" name="topic" autocomplete="off"><br>
        Date:<input type="date" name="date"><br>
        Block:
        <select name="block">
        	<option value=""></option>
            <option value="1">1st</option>
            <option value="2">2nd</option>
            <option value="3">3rd</option>
            <option value="4">4th</option>
        </select>
        Location:
        <select name="location">
        	<option value=""></option>
            <option value="11W">11th Social Science</option>
            <option value="12W">12th Social Science</option>
        	<option value="11N">11th English</option>
            <option value="12N">12th English</option>
            <option value="11E">11th Math</option>
            <option value="12E">12th Math</option>
            <option value="11S">11th Science</option>
            <option value="12S">12th Science</option>
        </select><br><br>
        <input type="submit" value="Add" name="submit">
    </form>
    <br />
    <h3>List of Presentations</h3>
    <a href="func/clearallviewers.func.php">!!! CLEAR ALL VIEWERS !!!</a>
    <br /><br />
    <table>
    	<tr>
        	<td>House</td>
        	<td>Name</td>
            <td>Topic</td>
            <td>Date</td>
            <td>Location</td>
            <td>Juniors</td>
            <td>Seniors</td>
        </tr>
    <?
	$mysqli = new mysqli($db_host, $db_user, $db_pass);
	$mysqli -> select_db($db_name);
	if(mysqli_connect_errno()) {
		echo "Connection Failed: " . mysqli_connect_errno();
		exit();
	}
	if($stmt = $mysqli->prepare("SELECT * FROM presentations ORDER BY lastname")){
		$stmt->execute();
		$stmt->bind_result($pres['uuid'], $pres['firstname'],$pres['lastname'],$pres['house'],$pres['topic'],$pres['date'],$pres['block'],$pres['location'],$pres['juniors'],$pres['seniors']);
		while($stmt->fetch()){
			?>
            <tr>
            	<td><? echo $pres['house']; ?></td>
            	<td><? echo '<a href="?p=pres&uuid='.$pres['uuid'].'">'.$pres['lastname'].", ".$pres['firstname']."</a>"; ?></td>
                <td><? echo $pres['topic']; ?></td>
                <td><? echo $pres['date']."-".$pres['block']; ?></td>
                <td><? echo $pres['location']; ?></td>
                <td><? echo numberOfJuniors($pres['uuid'])."/".$pres['juniors']; ?></td>
                <td><? echo numberOfSeniors($pres['uuid'])."/".$pres['seniors']; ?></td>
            </tr>
            <?
		}
	} else {
		echo $mysqli->error;
	}
	?>
    </table>
    <br><br><a href="func/admin.logout.php">Logout!</a>
    <?
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
</div></div>