<?php
//setting header to json
header('Content-Type: application/json');

$conn = mysqli_connect("localhost","root","", "penerbangan") or die("Koneksi gagal");

//query to get data from the table
$query = sprintf("SELECT year(tgl_pesan), kota_tujuan, count(pesanan.id_pesanan) as jumlah FROM pesanan, detail_pesanan, jadwal WHERE pesanan.id_pesanan = detail_pesanan.id_pesanan AND detail_pesanan.id_jadwal = jadwal.id_jadwal AND year(tgl_pesan)='2017' GROUP BY year(tgl_pesan), kota_tujuan ORDER BY count(kota_tujuan) desc, kota_tujuan asc  LIMIT 10");

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
