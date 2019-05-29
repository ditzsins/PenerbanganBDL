<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");

// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=semua-tujuan.xls");
?>

<table class="table table-bordered table-hover table-striped" border="1">
					<thead>
						<tr>
							<th >No</th>
							<th >Tahun</th>
							<th >Tujuan Penerbangan</th>
							<th >Jumlah Visit</th>
						</tr>
					</thead>
					<tbody>
						<?php
						//koneksi ke database
						$conn = mysqli_connect("localhost","root","", "penerbangan") or die("Koneksi gagal");
						//ambil data pendapatan
						$query = isset($_POST['query'])?$_POST['query']:'';
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
					</tbody>
				</table>