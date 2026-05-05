<?php
include("db.php");

$course = "";
if(isset($_GET['course'])){
    $course = $_GET['course'];
}

if(isset($_POST['submit'])){
    $name  = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $phone = mysqli_real_escape_string($conn, $_POST['phone']);
    $course = mysqli_real_escape_string($conn, $_POST['course']);

    // ✅ Empty validation
    if(empty($name) || empty($email) || empty($phone)){
        echo "<script>alert('All fields are required');</script>";
    }
    else{
        // ✅ Duplicate check
        $check = mysqli_query($conn,"SELECT * FROM applications WHERE email='$email' AND course='$course'");

        if(mysqli_num_rows($check) > 0){
            echo "<script>alert('You have already applied for this course');</script>";
        }
        else{
            // ✅ Insert
            $sql = "INSERT INTO applications(name,email,phone,course) 
                    VALUES('$name','$email','$phone','$course')";

            if(mysqli_query($conn,$sql)){
                header("Location: thankyou.php");
                exit();
            }else{
                echo "<script>alert('Error while submitting application');</script>";
            }
        }
    }
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Apply Now - Harvest International Business College</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="navbar">
    <div class="nav-left">
        <a href="home.php">Home</a>
        <a href="about.php">About</a>
        <a href="courses.php">Courses</a>
        <a href="contact.php">Contact</a>
        <a href="login.php">Login</a>
    </div>
    <div class="nav-right">
        <img src="img/logo.png" class="logo">
    </div>
</div>

<div class="page-box">
    <h2>Apply for Admission</h2>
    <p>Please fill the form below to apply for your selected course.</p>

    <form method="post" class="apply-form">
        <input type="text" name="name" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email Address" required>
        <input type="text" name="phone" placeholder="Phone Number" required>
        <input type="text" name="course" value="<?php echo $course; ?>" readonly>

        <button type="submit" name="submit" class="btn">Submit Application</button>

    </form>
    <div class="back-btn">
    <a href="courses.php">← Back to Courses</a>
</div>

</div>

</body>
</html>
