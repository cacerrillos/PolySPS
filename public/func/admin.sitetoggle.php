<?
session_start();
include_once("config.func.php");
setSiteEnabled("");
header('Location: ' . $_SERVER['HTTP_REFERER']);
?>