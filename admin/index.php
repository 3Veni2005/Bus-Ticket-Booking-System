<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: login.php");
}
?>
<a href="add_bus.php">Add Bus</a> | 
<a href="view_bookings.php">View All Bookings</a>

