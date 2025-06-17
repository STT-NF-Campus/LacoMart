<?php
$host = "lacomart-db";
$user = "user";
$pass = "pass";
$db   = "etoko";

$koneksi = mysqli_connect($host, $user, $pass, $db);

if (!$koneksi) {
    die("Koneksi gagal: " . mysqli_connect_error());
}
?>
