<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="stylesheet" href="css/bootstrap.css">
</head>

<head>
  <title>Alltourism Report System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<body>
  <nav class="navbar navbar-default">
    <div class="container">
      <link rel="stylesheet" href="css/bootstrap.css"/>
      <div>
        <h1><a href="index.html"><img src = "images/logo.png" width = "600"></a></h1>
      </div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
          <div>
            <ul class="nav navbar-nav navbar-right">
              <li class="navbar-default navbar-nav"><a class="nav-link" href="index.html">Home</a></li>
              <li class="nav-item dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Pendapatan <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="pendapatank.php">Pendaptan Kotor</a></li>
                  <li><a href="pendapatanb.php">Pendapatan Bersih</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Mitra Penerbangan<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="allpenerb.php">Semua Mitra</a></li>
                  <li><a href="tigapenerb.php">3 Mitra Tertinggi</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Mitra Pembayaran<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="allpemb.php">Semua Mitra</a></li>
                  <li><a href="tigapemb.php">3 Mitra Tertinggi</a></li>
                </ul>
              </li>
              <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Tujuan Penerbangan<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="alltujuan.php">Semua Tujuan</a></li>
                  <li><a href="tentujuan.php">10 Tujuan Terfavorit</a></li>
                </ul>
              </li>
            </ul>
          </div>
        </ul>
      </div>
    </div>
  </nav>

		<!-- Ini adalah click gambar -->
		<div class = "container">
			<br><br>	
		<div class="col-md-12" align="left">
			<form action="" method="POST";>
				<table style="float: right; width: 80%;">
					<tr>
						<td>Periode Awal</td>
						<td>&emsp;:&emsp;</td>
						<td><input type="year" name="periode_tahun" placeholder="Tahun Awal" class="form-control"></td>
						<td>&emsp;&emsp;</td>
						<td>Periode Akhir</td>
						<td>&emsp;:&emsp;</td>
						<td><input type="year" name="sampai_tahun" placeholder="Tahun Akhir" class="form-control"></td>
						<td>&emsp;</td>
						<td><button type="submit" name="simpan" class="btn btn-primary">Filter Data</button></td>
					</tr>
				</table>
			</form>
			<ul class="nav navbar-nav navbar-right" style="float: left; width: 20%;">
				<form action="tigapenerbdownload.php" method="post" style="float: left; width: 10%;">
					<input type="hidden" name="periode_tahun" value="<?php echo $_POST['periode_tahun'] ?>" >
					<input type="hidden" name="sampai_tahun" value="<?php echo $_POST['sampai_tahun'] ?>" >
					<input type="image" src ="images/download.png" width = "40" alt="download" />
				</form>
				<a href="tigapenerbgrafik.php" style="float: right; width: 80%;">
					<img src = "images/grafik.png" width = "40"> 
				</a>
			</ul>
		</div>
		<br><br>

			<!-- Ini adalah tabel pendapatan kotor -->
			<div align = "center">
				<h2>3 Mitra Penerbangan Tertinggi Per-Tahun</h2>
			</div> 
			<br>
			<div class = "col-md-12">   
				<table class="table table-bordered table-hover table-striped">
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

							if(isset($_POST['simpan']))
							{
								$periode_tahun = $_POST['periode_tahun'];
								$sampai_tahun = $_POST['sampai_tahun'];
								
								$tahun = $periode_tahun;
								while ( $tahun <= $sampai_tahun ) {
								//ambil data pendapatan
								$query = "SELECT year(tgl_pesan), nama_maskapai, (SUM(total_harga)*5/100) FROM pesanan, detail_pesanan, jadwal, maskapai WHERE pesanan.id_pesanan = detail_pesanan.id_pesanan AND detail_pesanan.id_jadwal = jadwal.id_jadwal AND jadwal.kode_maskapai = maskapai.kode_maskapai AND year(tgl_pesan) = $tahun GROUP BY year(tgl_pesan), nama_maskapai ORDER BY year(tgl_pesan) asc, (SUM(total_harga)*5/100) asc LIMIT 3";
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
							<td><td><td><td></td></td></td></td>
									<?php 
										$tahun++;
								}
							}
									?>	
					</tbody>
				</table>
			</div>
		</div>
</body>

<footer class="container-fluid text-center">
  <p style="color: #fff">Created By <img src="images/dit.png" width="40"> <a href="https://www.instagram.com/ditzsins" style="color: #fff">Aditya Pratama Dharmawan</a></p>
</footer>

</html>