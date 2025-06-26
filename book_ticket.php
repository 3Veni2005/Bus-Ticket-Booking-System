<?php
session_start();
include 'config.php';
if (!isset($_SESSION['user'])) {
    header("Location: login.php");
}
$user_id = $_SESSION['user'];
$bus_id = $_GET['bus_id'];

$sql = "INSERT INTO bookings (user_id, bus_id) VALUES ($user_id, $bus_id)";
if ($conn->query($sql)) {
    echo "Ticket booked! <a href='dashboard.php'>Back</a>";
} else {
    echo "Error: " . $conn->error;
}

