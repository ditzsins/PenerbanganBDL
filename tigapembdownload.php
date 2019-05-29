<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");

// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=tiga-pembayaran.xls");
?>

<table class="table table-bordered table-hover table-striped" border="1">
					<thead>
						<tr>
							<th >No</th>
							<th >Tahun</th>
							<th >Nama Mitra</th>
							<th >Total Fee</th>
						</tr>
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
								$query = "SELECT year(tgl_pesan), nama_mitra, (SUM(total_harga)*2.5/100) FROM metode_bayar, pesanan WHERE pesanan.id_metode = metode_bayar.id_metode AND year(tgl_pesan)=$tahun GROUP BY year(tgl_pesan), nama_mitra ORDER BY (SUM(total_harga)*2.5/100) desc LIMIT 3";
								$result = mysqli_query($conn,$query) or die(mysqli_error());
						
						?>

						<?php $i = 1; ?>
						<?php while( $row = mysqli_fetch_assoc($result) ) : ?>
							<tr>
								<td ><?php echo $i ?></td>
								<td ><?php echo $row['year(tgl_pesan)'] ?></td>
								<td ><?php echo $row['nama_mitra']; ?></td>
								<td ><?php echo number_format($row['(SUM(total_harga)*2.5/100)'],0) ?></td>
							</tr>
						<?php $i++;?>
						<?php endwhile;?>
									<?php 
										$tahun++;
								}
							
									?>	
					</tbody>
				</table>
