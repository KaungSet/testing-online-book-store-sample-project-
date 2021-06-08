<?php 
		include("confs/auth.php");
		include("confs/config.php");

		$id = $_POST['id'];
		$title = $_POST['title'];
		$author = $_POST['author'];
		$summary = htmlspecialchars($_POST['summary'],ENT_QUOTES) ;
		$price = $_POST['price'];
		$category_id = $_POST['category_id'];

		$cover = $_FILES['cover']['name'];
		$temp = $_FILES['cover']['tmp_name'];



		

		if($cover)
		{
			move_uploaded_file($tmp, "covers/$cover");
			$sql = "UPDATE books SET title= '$title' , author= '$author' , summary= '$summary' , price = '$price' , category_id= '$category_id' , cover= '$cover' , modified_date=now()  WHERE id = $id "; 

		}

		else
		{
			$sql = "UPDATE books SET title= '$title' , author= '$author' , summary= '$summary' , price = '$price' , category_id= '$category_id' , modified_date=now()  WHERE id = $id ";

		}


		mysqli_query($conn, $sql);
		header('location:book-list.php');









 ?>