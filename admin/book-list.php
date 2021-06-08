<?php
	include("confs/auth.php");
 	include("confs/config.php");
  
  
  
  $result = mysqli_query($conn,"SELECT books.*, categories.name FROM books LEFT JOIN categories ON books.category_id = categories.id ORDER BY books.title ");
?>

<!DOCTYPE HTML>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
  <title>Book List</title>
  <link rel="stylesheet" href="covers/css/style.css">
</head>
<body>
<h1>Book List</h1>
<ul class="menu">
  <li><a href="book-list.php">Manage Books</a></li>
  <li><a href="cat-list.php">Manage Categories</a></li>
  <li><a href="orders.php">Manage Orders</a></li>
  <li><a href="logout.php">Logout</a></li>
</ul>



<ul class="list">
  <?php while($row = mysqli_fetch_assoc($result)): ?>
    <li>
      <? if(!is_dir("covers/{$row['cover']}") and file_exists("covers/{$row['cover']}")): ?>
      <img src="covers/<?php echo $row['cover'] ?>" alt="" align="right" height="140">
      <? else: ?>
      <img src="covers/no-cover.gif" alt="" align="right" height="140">
      <? endif; ?>

      <b><?php echo $row['title'] ?></b>
      <i>by <?php echo $row['author'] ?></i>
      <small>(in <?php echo $row['name'] ?>)</small>
      <span>$<?php echo $row['price'] ?></span>
      <div><?php echo $row['summary'] ?></div>

      [ <a href="book-del.php?id=<?php echo $row['id'] ?>" 
      			class="del" onClick="return confirm('Are you sure?')">del</a> ]
      [ <a href="book-edit.php?id=<?php echo $row['id'] ?>">edit</a> ]
    </li>
  <?php endwhile; ?>
</ul>

<a href="book-new.php" class="new">New Book</a>



</body>
</html>

