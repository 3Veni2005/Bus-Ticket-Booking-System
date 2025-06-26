<?php
session_start();
include 'config.php';
if (!isset($_SESSION['user'])) {
    header("Location: login.php");
}
$user_id = $_SESSION['user'];
$result = $conn->query("SELECT * FROM bookings INNER JOIN buses ON bookings.bus_id = buses.id WHERE bookings.user_id=$user_id");

echo "<h3>Your Bookings</h3>";
while ($row = $result->fetch_assoc()) {
    echo "Trip: {$row['from_city']} → {$row['to_city']}<br>";
}
echo "<a href='dashboard.php'>Back</a>";

