<?php
session_start();
if (isset($_SESSION['user'])) {
    header("Location: dashboard.php");
}
?>
<!DOCTYPE html>
<html>
<head><title>Bus Booking System</title></head>
<body>
    <h2>Welcome to Bus Booking</h2>
    <a href="register.php">Register</a> |
    <a href="login.php">Login</a>
</body>
</html>

