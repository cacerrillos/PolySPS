<div class="content">
    <h1>All Presentations</h1>
    <div id="quizz" style="margin-left:20px">
    <input type="button" onClick="window.print()" value="Print This Page"/>
    <input type="button" onClick="window.location = 'func/print.func.php?by=presentation'" value="Print all Presentations (With Viewers)"/>
    <? if(isset($_SESSION['isadmin'])){?>
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
            <option value="Eng-11">11th English</option>
            <option value="Eng-12">12th English</option>
            <option value="Math-11">11th Math</option>
            <option value="Math-12">12th Math</option>
            <option value="Sci-11">11th Science</option>
            <option value="Sci-12">12th Science</option>
            <option value="SS-11">11th Social Science</option>
            <option value="SS-12">12th Social Science</option>
        </select>
        <br>Max Juniors: <select name="juniors">
<?
for($x = 1; $x <= 20; $x++){
	if($x==16){
		echo '<option value="'.$x.'" selected="selected">'.$x.'</option>';
	} else {
		echo '<option value="'.$x.'">'.$x.'</option>';
	}
}
?>
</select>
Max Seniors: <select name="seniors">
<?
for($x = 1; $x <= 20; $x++){
	if($x==16){
		echo '<option value="'.$x.'" selected="selected">'.$x.'</option>';
	} else {
		echo '<option value="'.$x.'">'.$x.'</option>';
	}
}
?>
</select><br /><br>
        <input type="submit" value="Add" name="submit">
    </form>
    <br />
    <? }?>
    <table>
    	<tr>
        	<td>Date/Block</td>
        	<td>Name</td>
            <td>House</td>
            <td>Topic</td>
            <td>Location</td>
            <td>Juniors</td>
            <td>Seniors</td>
            <? if(isset($_SESSION['isadmin'])){?><td>Delete</td><? } ?>
        </tr>
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
		while($stmt->fetch()){
			?>
            <tr>
            	<td><? echo substr($pres['date'],4,2)."/".substr($pres['date'],6,2)."-".$pres['block']; ?></td>
            	
            	<td><? echo $pres['lastname'].", ".$pres['firstname'] ?></td>
                <td><? echo $pres['house']; ?></td>
                <td><? echo '<a href="?p=pres&uuid='.$pres['uuid'].'">'.$pres['topic']."</a>";; ?></td>
                
                <td><? echo $pres['location']; ?></td>
                <td><? echo numberOfJuniors($pres['uuid'])."/".$pres['juniors']; ?></td>
                <td><? echo numberOfSeniors($pres['uuid'])."/".$pres['seniors']; ?></td>
                <? if(isset($_SESSION['isadmin'])){?><td><a href="func/pres.delete.php?uuid=<? echo $pres['uuid']; ?>">Delete</a></td><? } ?>
            </tr>
            <?
		}
	} else {
		echo $mysqli->error;
	}
	?>
    </table>
</div></div>