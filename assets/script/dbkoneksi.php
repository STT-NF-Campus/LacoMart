<?php
$host = "lacomart-db";
$user = "root";
$pass = "root";
$db   = "etoko";

$koneksi = mysqli_connect($host, $user, $pass, $db);

if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>
