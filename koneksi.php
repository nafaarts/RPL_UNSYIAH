<?php

$koneksi = mysqli_connect('localhost', 'root', 'root', 'simpandesa');

if (!$koneksi) {
    die('Database error : ' . mysql_error());
}
