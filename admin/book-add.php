<?php 
		include("confs/auth.php");
		include("confs/config.php");

		$title = $_POST['title'];
		$author = $_POST['author'];
		$summary = $_POST['summary'];
		$price = $_POST['price'];
		$category_id = $_POST['category-id'];
		$cover = $_FILES['cover']['name'];
		$tmp = $_FILES['cover']['tmp_name'];

		if($cover)
		{
			move_uploaded_file($tmp, "covers/$cover");

		}

		$sql = "INSERT INTO books (title,author,summary,price,category_id,cover,created_date,modified_date)
			VALUES ('$title','$author','$summary','$price','$category_id','$cover',now(),now())";

				

		mysqli_query($conn,$sql);

		header('location:book-list.php');


 ?>