<?php
//$server = "localhost";
//$username = "root";
//$password = "";
//$database = "penerbangan";

// Koneksi dan memilih database di server
$conn = mysql_connect("localhost","root","") or die("Koneksi gagal");
mysql_select_db("penerbangan") or die("Database tidak bisa dibuka");
?>