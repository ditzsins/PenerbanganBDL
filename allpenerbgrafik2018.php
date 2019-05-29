<?php
//setting header to json
header('Content-Type: application/json');

$conn = mysqli_connect("localhost","root","", "penerbangan") or die("Koneksi gagal");

//query to get data from the table
$query = sprintf("SELECT nama_maskapai, (SUM(total_harga)*5/100) as fee FROM pesanan, detail_pesanan, jadwal, maskapai WHERE pesanan.id_pesanan = detail_pesanan.id_pesanan AND detail_pesanan.id_jadwal = jadwal.id_jadwal AND jadwal.kode_maskapai = maskapai.kode_maskapai AND year(tgl_pesan) ='2018' GROUP BY year(tgl_pesan), nama_maskapai");

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
