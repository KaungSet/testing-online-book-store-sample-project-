<?php 


	$connhost = "localhost";
	$connuser = "root";
	$connpass = "";
	$connname = "storeoriginal";


/*	mysqli_connect
	mysqli_select_db */



	$conn = mysqli_connect($connhost,$connuser,$connpass);
	mysqli_select_db($conn,$connname);


 ?>