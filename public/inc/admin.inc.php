<div class="content">
    <h1>Admin</h1>
    <div id="quizz" style="margin-left:20px">
<?
if(isset($_SESSION['isadmin'])){
	//display admin tools
	?>
    <h3>Site Enable/Disable</h3>
    <?
	if($siteEnabled){
		?>
        <h4>The site is currently Enabled! <a href="func/admin.sitetoggle.php">Click here to Disable the site!</a></h4>
        <?
	} else {
		?>
        <h4>The site is currently Disabled! <a href="func/admin.sitetoggle.php">Click here to Enable the site!</a></h4>
        <?
	}
	?>
    <h3>Viewer Reset</h3>
	<h4><a href="func/clearallviewers.func.php">!!! CLEAR ALL VIEWERS !!!</a></h4>
    <h3>Password Management</h3>
    <form action="func/pwchange.func.php" method="post">
    Old password:<input type="password" name="old" /><br />
    New Password:<input type="password" name="new" /><br />
    <input type="submit" name="submit" value="Change" />
    </form>
    <?
} else {
?>
<h1>Please Login!</h1>
<?
}
?>
</div></div>