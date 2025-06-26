<?php
include '../config.php';
if ($_POST) {
    $from = $_POST['from'];
    $to = $_POST['to'];
    $seats = $_POST['seats'];
    $conn->query("INSERT INTO buses (from_city, to_city, seats) VALUES ('$from', '$to', $seats)");
    echo "Bus added.";
}
?>
<form method="post">
    From: <input name="from"><br>
    To: <input name="to"><br>
    Seats: <input name="seats" type="number"><br>
    <input type="submit" value="Add Bus">
</form>

