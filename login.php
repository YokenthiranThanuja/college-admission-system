<?php
include "db.php";
session_start();

if(isset($_POST['login'])){
    $email = $_POST['email'];
    $password = md5($_POST['password']);

    $sql = "SELECT * FROM users WHERE email='$email' AND password='$password'";
    $res = mysqli_query($conn,$sql);

    if(mysqli_num_rows($res)==1){
        $row = mysqli_fetch_assoc($res);
        $_SESSION['email'] = $row['email'];
        $_SESSION['role']  = $row['role'];

        if($row['role']=="admin"){
    header("Location: admin/dashboard.php");
}
else{
    header("Location: student/dashboard.php");
}
exit();

    }else{
        echo "<script>alert('Invalid Login');</script>";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Login - Harvest International Business College</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="login-wrapper">
    <div class="login-box">
        <img src="img/logo.png" class="login-logo">
        <h2>Student / Admin Login</h2>

        <form method="post">
            <input type="email" name="email" placeholder="Enter your Email" required>
            <input type="password" name="password" placeholder="Enter your Password" required>
            <button name="login">Login</button>
        </form>

        <p>New user? <a href="register.php">Register here</a></p>
    </div>
</div>

</body>
</html>
