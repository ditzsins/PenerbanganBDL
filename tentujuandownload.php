<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");

// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=10-tujuan.xls");
?>

<table class="table table-bordered table-hover table-striped" border="1">
					<thead>
						<tr>
							<th >No</th>
							<th >Tahun</th>
							<th >Tujuan Penerbangan</th>
							<th >Jumlah Visit</th>
					</thead>
					<tbody>
						<?php
						//koneksi ke database
							$conn = mysqli_connect("localhost","root","", "penerbangan") or die("Koneksi gagal");
								$periode_tahun = isset($_POST['periode_tahun'])?$_POST['periode_tahun']:'';
								$sampai_tahun = isset($_POST['sampai_tahun'])?$_POST['sampai_tahun']:'';
								$tahun = $periode_tahun;
								while ( $tahun <= $sampai_tahun ) {
								//ambil data pendapatan
								$query = "SELECT year(tgl_pesan), kota_tujuan, count(pesanan.id_pesanan) FROM pesanan, detail_pesanan, jadwal WHERE pesanan.id_pesanan = detail_pesanan.id_pesanan AND detail_pesanan.id_jadwal = jadwal.id_jadwal AND year(tgl_pesan)=$tahun GROUP BY year(tgl_pesan), kota_tujuan ORDER BY count(kota_tujuan) desc, kota_tujuan asc  LIMIT 10";
								$result = mysqli_query($conn,$query) or die(mysqli_error());
						
						?>

						<?php $i = 1; ?>
						<?php while( $row = mysqli_fetch_assoc($result) ) : ?>
							<tr>
								<td ><?php echo $i ?></td>
								<td ><?php echo $row['year(tgl_pesan)'] ?></td>
								<td ><?php echo $row['kota_tujuan']; ?></td>
								<td ><?php echo $row['count(pesanan.id_pesanan)'] ?></td>
							</tr>
						<?php $i++;?>
						<?php endwhile;?>
									<?php 
										$tahun++;
								}
							
									?>	
					</tbody>
				</table>
