<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "hibc_db";

$conn = mysqli_connect($host,$user,$pass,$db);

if(!$conn){
    die("Database Connection Failed");
}
?>

