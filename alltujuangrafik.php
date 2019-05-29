<html>

<head>
	<script src="web/js/jquery-1.11.1.min.js"></script>
	<script src="web/js/Chart.js"></script>
	<link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<title>Alltourism Report System</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
	<nav class="navbar navbar-default">
		<div class="container">
			<div>
				<h1><a href="index.html"><img src = "images/logo.png" width = "600"></a></h1>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
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
		</div>
	</nav>
	<div class="container-fluid"> 
		<div class="col-md-6" class="graph"> 
			<p align="center" style="font-weight: bold;">Grafik Jumlah Visit Tujuan Penerbangan Tahun 2016</p>
			<canvas id="canvas" height="350" width="700"></canvas>
			<script>
				$(document).ready(function(){
					$.ajax({
						url: "http://localhost/penerbangan2/alltujuangrafik2016.php",
						method: "GET",
						success: function(data) 
						{
							console.log(data);
							var namakota = [];
							var jumlahvisit = [];

							for(var i in data) 
							{
								namakota.push(data[i].kota_tujuan);
								jumlahvisit.push(data[i].jumlah);
							}

							var barChartData = 
							{
								labels : namakota,
								datasets : [
								{
									label : "Mitra",
									fillColor : "rgba(77, 182, 172, 0.78)",
									strokeColor : "rgba(58, 135, 128, 0.78)",
									data: jumlahvisit,
									options: {
        								scales: {
        									yAxes: [{
        										ticks: {
        											beginAtZero:true
        										}
        									}]
        								}
        							}
								}
								]
							}

							var myLine = new Chart(document.getElementById("canvas").getContext("2d")).Bar(barChartData);
						},

						error: function(data) 
						{
							console.log(data);
						}
					});
				});
			</script>
		</div>
		<div align="right" class="col-md-6" class="graph"> 
			<p align="center" style="font-weight: bold;">Grafik Jumlah Visit Tujuan Penerbangan Tahun 2017</p>
			<canvas id="canvas2" height="350" width="700"></canvas>
			<script>
				$(document).ready(function(){
					$.ajax({
						url: "http://localhost/penerbangan2/alltujuangrafik2017.php",
						method: "GET",
						success: function(data) 
						{
							console.log(data);
							var namakota = [];
							var jumlahvisit = [];

							for(var i in data) 
							{
								namakota.push(data[i].kota_tujuan);
								jumlahvisit.push(data[i].jumlah);
							}

							var barChartData = 
							{
								labels : namakota,
								datasets : [
								{
									label : "Mitra",
									fillColor : "rgba(77, 182, 172, 0.78)",
									strokeColor : "rgba(58, 135, 128, 0.78)",
									data: jumlahvisit
								}
								]
							}

							var myLine = new Chart(document.getElementById("canvas2").getContext("2d")).Bar(barChartData);
						},

						error: function(data) 
						{
							console.log(data);
						}
					});
				});
			</script>
		</div>
	</div>

<div class="container-fluid"> 
		<div class="col-md-6" class="graph"> 
			<p align="center" style="font-weight: bold;">Grafik Jumlah Visit Tujuan Penerbangan Tahun 2018</p>
			<canvas id="canvas3" height="350" width="700"></canvas>
			<script>
				$(document).ready(function(){
					$.ajax({
						url: "http://localhost/penerbangan2/alltujuangrafik2018.php",
						method: "GET",
						success: function(data) 
						{
							console.log(data);
							var namakota = [];
							var jumlahvisit = [];

							for(var i in data) 
							{
								namakota.push(data[i].kota_tujuan);
								jumlahvisit.push(data[i].jumlah);
							}

							var barChartData = 
							{
								labels : namakota,
								datasets : [
								{
									label : "Mitra",
									fillColor : "rgba(77, 182, 172, 0.78)",
									strokeColor : "rgba(58, 135, 128, 0.78)",
									data: jumlahvisit
								}
								]
							}

							var myLine = new Chart(document.getElementById("canvas3").getContext("2d")).Bar(barChartData);
						},

						error: function(data) 
						{
							console.log(data);
						}
					});
				});
			</script>
		</div>
		<div align="right" class="col-md-6" class="graph"> 
			<p align="center" style="font-weight: bold;">Grafik Jumlah Visit Tujuan Penerbangan Tahun 2019</p>
			<canvas id="canvas4" height="350" width="700"></canvas>
			<script>
				$(document).ready(function(){
					$.ajax({
						url: "http://localhost/penerbangan2/alltujuangrafik2019.php",
						method: "GET",
						success: function(data) 
						{
							console.log(data);
							var namakota = [];
							var jumlahvisit = [];

							for(var i in data) 
							{
								namakota.push(data[i].kota_tujuan);
								jumlahvisit.push(data[i].jumlah);
							}

							var barChartData = 
							{
								labels : namakota,
								datasets : [
								{
									label : "Mitra",
									fillColor : "rgba(77, 182, 172, 0.78)",
									strokeColor : "rgba(58, 135, 128, 0.78)",
									data: jumlahvisit
								}
								]
							}

							var myLine = new Chart(document.getElementById("canvas4").getContext("2d")).Bar(barChartData);
						},

						error: function(data) 
						{
							console.log(data);
						}
					});
				});
			</script>
		</div>
	</div>
</body>

<footer class="container-fluid text-center">
  <p style="color: #fff">Created By <img src="images/dit.png" width="40"> <a href="https://www.instagram.com/ditzsins" style="color: #fff">Aditya Pratama Dharmawan</a></p>
</footer>

</html>
	