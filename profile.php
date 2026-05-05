<?php
session_start();
if(!isset($_SESSION['email'])){
    header("Location: login.php");
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Profile</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="dashboard-box">
<h2>User Profile</h2>
<p><strong>Email:</strong> <?php echo $_SESSION['email']; ?></p>
<p><strong>Role:</strong> <?php echo $_SESSION['role']; ?></p>

<a href="index.php" class="btn">Back</a>
</div>

</body>
</html>
