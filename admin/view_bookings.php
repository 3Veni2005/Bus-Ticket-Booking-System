<?php
include '../config.php';
$bookings = $conn->query("SELECT users.name, buses.from_city, buses.to_city 
                          FROM bookings 
                          JOIN users ON bookings.user_id = users.id 
                          JOIN buses ON bookings.bus_id = buses.id");

while ($row = $bookings->fetch_assoc()) {
    echo "{$row['name']} booked from {$row['from_city']} to {$row['to_city']}<br>";
}

