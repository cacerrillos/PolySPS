<div class="content">
    <h1>Error!</h1>
    <div id="quizz" style="margin-left:20px">
<?
if($_GET['e']=="1"){
?>
<h2>One or more of your options were left blank. Please <a href="?p=home">try again</a>.</h2>
<?
}
?>
<?
if($_GET['e']=="2"){
	?>
	<h2>One or more of your selected presentations became full before you hit submit.<br /><a href="?p=home">Try again :/</a></h2>
<?
}
?>
</div></div>