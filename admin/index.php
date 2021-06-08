<!DOCTYPE HTML>
<html lang="en-US">
<head>
  <meta charset="UTF-8">
  <title>Admin Login</title>
  <link rel="stylesheet" href="covers/css/style.css">
</head>
<body>
<h1>Login to Book Store Administration</h1>

<? if( isset($_GET['login']) and $_GET['login'] == "failed"): ?>
  <div class="error">Login failed! User name or password incorrect.</div>
<? endif; ?>

<form action="login.php" method="post">
  <label for="name">Name</label>
  <input type="text" id="name" name="name">

  <label for="password">Password</label>
  <input type="password" id="password" name="password">

  <br><br>

  <input type="submit" value="Admin Login">
</form>
</body>
</html>

