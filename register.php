<?php
include "db.php";

if(isset($_POST['register'])){
    $email = $_POST['email'];
    $password = md5($_POST['password']);
    $role = "user";

    $sql = "INSERT INTO users(email,password,role) 
            VALUES('$email','$password','$role')";

    if(mysqli_query($conn,$sql)){
        header("Location: login.php");
    }else{
        echo "Registration Failed";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Register - Harvest International Business College</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="login-wrapper">
    <div class="login-box">
        <img src="img/logo.png" class="login-logo">
        <h2>Create Account</h2>

        <form method="post">
            <input type="email" name="email" placeholder="Enter your Email" required>
            <input type="password" name="password" placeholder="Create Password" required>
            <button name="register">Register</button>
        </form>

        <p>Already have an account? <a href="login.php">Login here</a></p>
    </div>
</div>

</body>
</html>

