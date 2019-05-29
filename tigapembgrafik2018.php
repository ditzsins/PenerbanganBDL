<?php
//setting header to json
header('Content-Type: application/json');

$conn = mysqli_connect("localhost","root","", "penerbangan") or die("Koneksi gagal");

//query to get data from the table
$query = sprintf("SELECT year(tgl_pesan), nama_mitra as mitra, (SUM(total_harga)*2.5/100) as fee FROM metode_bayar, pesanan WHERE pesanan.id_metode = metode_bayar.id_metode AND year(tgl_pesan)='2018' GROUP BY year(tgl_pesan), nama_mitra ORDER BY (SUM(total_harga)*2.5/100) desc LIMIT 3");

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
