<?php
session_start();
include 'config.php';

if (!isset($_SESSION['user'])) {
    header("Location: login.php");
}

$user_id = $_SESSION['user'];
$user = $conn->query("SELECT * FROM users WHERE id=$user_id")->fetch_assoc();
$buses = $conn->query("SELECT * FROM buses");

echo "<h3>Welcome, {$user['name']}</h3>";
echo "<a href='logout.php'>Logout</a><hr>";

echo "<h4>Available Buses</h4>";
while ($bus = $buses->fetch_assoc()) {
    echo "From: {$bus['from_city']} To: {$bus['to_city']} | Seats: {$bus['seats']} | 
          <a href='book_ticket.php?bus_id={$bus['id']}'>Book</a><br>";
}

