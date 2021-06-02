<?php
session_start();

if ($_SESSION['login'] != "true") {
    header('location: login.php');
}

if ($_SESSION['hak_akses'] == 'user') {
    header("location: index.php");
}

echo "halaman admin!";

?>