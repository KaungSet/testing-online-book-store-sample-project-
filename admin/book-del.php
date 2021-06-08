
<?php 

	include("confs/auth.php");
	include("confs/config.php");

	$id = $_GET['id'];
	$sql = "DELETE FROM books WHERE id = $id";
	mysqli_query($conn,$sql);
	header('location:book-list.php');



 ?>