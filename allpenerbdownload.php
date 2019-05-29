<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");

// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=semua-penerbangan.xls");
?>

<table class="table table-bordered table-hover table-striped" border="1">
					<thead>
						<tr>
							<th >No</th>
							<th >Tahun</th>
							<th >Nama Maskapai</th>
							<th >Total Fee</th>
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
								<td ><?php echo $row['nama_maskapai']; ?></td>
								<td ><?php echo number_format($row['(SUM(total_harga)*5/100)'],0) ?></td>
							</tr>
						<?php $i++;?>
						<?php endwhile;?>
					</tbody>
				</table>