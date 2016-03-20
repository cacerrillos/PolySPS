<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Senior Presentation Scheduler</title>
<link rel="stylesheet" type="text/css" href="styles.css">
<!--[if lte IE 7]>
<style>
.content { margin-right: -1px; } /* this 1px negative margin can be placed on any of the columns in this layout with the same corrective effect. */
ul.nav a { zoom: 1; }  /* the zoom property gives IE the hasLayout trigger it needs to correct extra whiltespace between the links */
</style>
<![endif]--></head>
<body>
<?
?>
<div class="container">
  <div class="header"><a href="?p=home"></a> 
    <!-- end .header --></div>
  <div class="sidebar1">
    <ul class="nav">
      <li><a href="?p=home">Home</a></li>
      <li><a href="?p=presentations">Presentations</a></li>
      <li><a href="?p=viewers">Viewers</a></li>
      <? //<li><a href="?p=print">Printing</a></li> ?>
      <li><a href="?p=admin">Admin</a></li>
    </ul>
    <p>
    Admin Login Only
    <? if(!isset($_SESSION['isadmin'])){ ?>
    <form action="func/admin.login.php" method="post">
    	Username:<input type="text" name="username"><br>
        Password:<input type="password" name="password"><br>
        <input type="submit" name="submit" value="Login">
    </form>
    <? } else { ?>
    	<a href="func/admin.logout.php">Logout!</a>
    <? } ?>
    </p>
    <!-- end .sidebar1 --></div>
