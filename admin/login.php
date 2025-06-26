<?php
session_start();
if ($_POST) {
    if ($_POST['username'] == 'admin' && $_POST['password'] == 'admin123') {
        $_SESSION['admin'] = true;
        header("Location: index.php");
    } else {
        echo "Invalid admin login";
    }
}
?>
<form method="post">
    Username: <input name="username"><br>
    Password: <input name="password" type="password"><br>
    <input type="submit" value="Login">
</form>

