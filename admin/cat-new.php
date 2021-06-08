<?php include("confs/auth.php") ?>
<!DOCTYPE html>
<html>
<head>
	<title>cat_new</title>
	<link rel="stylesheet" href="covers/css/style.css?1">
	
</head>
<body>
	<h1>New Category</h1>

	<ul class="menu">
			<li><a href="book-list.php">Manage Books</a></li>
			<li><a href="cat-list.php">Manage Categories</a></li>
			<li><a href="orders.php">Manage Orders</a></li>
			<li><a href="logout.php">Logout</a></li>
	</ul>

	<form action="cat-add.php" method="post">
		<label for="name">Category Name</label>
		<input type="text" name="name" id="name">

		<label for="remark">Remark</label>
		<textarea name="remark" id="remark"></textarea>

		<br><br>
		<input type="submit" value="Add Category">
	</form>
</body>
</html>


