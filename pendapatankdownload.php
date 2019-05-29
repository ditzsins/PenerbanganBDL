<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");

// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=pendapatan-kotor.xls");
?>

<table class="table table-bordered table-hover table-striped" border="1">
					<thead>
						<tr>
							<th >No</th>
							<th >Tahun</th>
							<th >Bulan</th>
							<th >Total</th>
						</tr>
					</thead>
					<tbody>
						<?php
						//koneksi ke database
						$conn = mysqli_connect("localhost","root","", "penerbangan") or die("Koneksi gagal");
						//ambil data pendapatan
						$query = isset($_POST['query'])?$_POST['query']:'';
						$result = mysqli_query($conn,$query) or die(mysqli_error());

						$bulan = array (1 =>'Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember');
						?>

						<?php 
						$i = 1;
						while( $row = mysqli_fetch_assoc($result) ) : ?>
							<tr >
								<td ><?php echo $i ?></td>
								<td ><?php echo $row['year(tgl_bayar)'] ?></td>
								<td ><?php $mo = $row['month(tgl_bayar)']; echo $bulan[$mo]; ?></td>
								<td ><?php echo $row['SUM(total_harga)'] ?></td>
							</tr>
						
						<?php $i++; endwhile;?>
					</tbody>
				</table>