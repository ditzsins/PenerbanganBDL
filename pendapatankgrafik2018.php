<?php
//setting header to json
header('Content-Type: application/json');

$conn = mysqli_connect("localhost","root","", "penerbangan") or die("Koneksi gagal");

//query to get data from the table
$query = sprintf("SELECT month(tgl_bayar) as bulan, SUM(total_harga) as fee FROM pesanan WHERE year(tgl_pesan) = '2018' GROUP BY month(tgl_pesan) ORDER BY bulan asc");

//execute query
$result = $conn->query($query);

//loop through the returned data
$data = array();
foreach ($result as $row) {
	$data[] = $row;
}

//free memory associated with result
$result->close();

//close connection
$conn->close();

//now print the data
print json_encode($data);
