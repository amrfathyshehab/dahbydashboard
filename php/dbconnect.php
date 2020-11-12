<?php 
session_start();
$host="localhost"; 
$username="root"; 
$password="" ;
$database="el_dahby" ;
$message="" ;
	try{
	$connect = mysqli_connect("$host" , "$username" , "$password" , "$database" );
	}
	catch(PDOException $error)
	{
		$message = $error->getMessage();
    }
   ?>