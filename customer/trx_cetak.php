<?php
include("sess_check.php");

include("dist/function/format_tanggal.php");
include("dist/function/format_rupiah.php");
$kode = $_GET['id'];
$sql = "SELECT trx.*, tmp_trx.*, barangjasa.*, konsumen.*, users.* FROM trx, tmp_trx, barangjasa, konsumen, users 
			WHERE trx.id_trx=tmp_trx.id_trx AND trx.id_kon=konsumen.id_kon AND tmp_trx.id_brg=barangjasa.id_brg
			AND trx.id_kasir = users.id AND trx.id_trx='" . $_GET['id'] . "'";
$query = mysqli_query($conn, $sql);
$result = mysqli_fetch_array($query);
// deskripsi halaman
$pagedesc = "Cetak Bukti Transaksi";
$pagetitle = str_replace(" ", "_", $pagedesc)
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">

	<title><?php echo $pagetitle ?></title>

	<link href="../foto/logo-1.png" rel="icon" type="images/x-icon">


	<!-- Bootstrap Core CSS -->
	<link href="libs/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom CSS -->
	<link href="dist/css/offline-font.css" rel="stylesheet">
	<link href="dist/css/custom-report.css" rel="stylesheet">

	<!-- Custom Fonts -->
	<link href="libs/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

	<!-- jQuery -->
	<script src="libs/jquery/dist/jquery.min.js"></script>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<section id="header-kop">
		<div class="container-fluid">
			<table class="table table-borderless">
				<tbody>
					<tr>
						<td class="text-left" width="20%">
							<img src="https://lh3.googleusercontent.com/1BK3mGyJcG5LZDwDcTXsAVq55nvfOWoruszgtdZP3KnwmJyJrkHeS1P4R-Xm0KsGMBHBfzbdQRGQkr03XOctNY1CQaC7wZ_DhSiCCj3G6JmBrbAYhsmhZr9cR8x1Q9bR2pUJQgDjiZkOjhQASX6pfgAlJhGksMY2lbuui14dAnmzKGUVb9Cf63RgOt3cl5t00-TYzac5DJPK82aKEUfcXWbXCqP0tMVja6gqaRLm-VxXx_qQ9cxMdo6slCu1F-IX55XOOhoWvvhKVcnMQxFDJizHN8BdGaymRP7IWLeYADd_G3SpV1WkndGgP0QCOSAAy1wVPdKNXSplN0pU8kHR6EdbcHjGRkjKr3sv4qQEZvWD5nq6z3iUmWDV01skHDllGQ5iJCb00Ao_Ecz07o83kVls4aKygknuXAxKA0U9QptgTPECdWZ2gYhmaC1UHfLZsUrQorOC5sgrNOueGOlp9FYSBsgiDChFCCAjDFYMP4IzpmXh0fAhz_vtMvqcrHeXMrwTsefYrocUyUdZoRjptZmy7l8zu1KghwAlrTuH6_hCSDIIQ8sGOIraONR21m9phDU6TTrc10OMHbFIlnarlqRlrJxQ3sCWgXsEzhsMg9QYphRlCu9d970CjBOX4t9SfATjSZLs5zfHeYp26UPDgee8-6dmwTIzI1F4H3adaK94T67bOk1827LPitOvHJ0c-D97H9QjMTMh6V22Uc-W1uSt=w953-h667-no?authuser=0" alt="logo-dkm" width="70" />
						</td>
						<td class="text-center" width="60%">
							<b>Media Workshop</b> <br>
							Jakarta<br>
							Telp: (021) 192819189<br>
						<td class="text-right" width="20%">
						</td>
					</tr>
				</tbody>
			</table>
			<hr class="line-top" />
		</div>
	</section>

	<section id="body-of-report">
		<div class="container-fluid">
			<h4 class="text-center">Detail Transaksi</h4>
			<br />
			<table width="100%">
				<tr>
					<td width="20%"><b>ID. Transaksi</b></td>
					<td width="2%"><b>:</b></td>
					<td width="78%"><?php echo $result['id_trx']; ?></td>
				</tr>
				<tr>
					<td width="20%"><b>Tanggal</b></td>
					<td width="2%"><b>:</b></td>
					<td width="78%"><?php echo format_tanggal($result['tgl_trx']); ?></td>
				</tr>

				<tr>
					<td width="20%"><b>Konsumen</b></td>
					<td width="2%"><b>:</b></td>
					<td width="78%"><?php echo $result['nama_kon']; ?></td>
				</tr>
			</table>
			</br>
			<table class="table table-bordered table-keuangan">
				<thead>
					<tr>
						<th width="1%">No</th>
						<th width="13%">Nama Barang/Jasa</th>
						<th width="10%">Jumlah</th>
						<th width="10%">Harga Satuan</th>
						<th width="10%">Total</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$i = 1;
					$grand = 0;
					$sqltmp = "SELECT tmp_trx.*, barangjasa.* FROM tmp_trx, barangjasa WHERE tmp_trx.id_brg=barangjasa.id_brg
								AND tmp_trx.id_trx='$kode' ORDER BY barangjasa.nama ASC";
					$querytmp = mysqli_query($conn, $sqltmp);

					while ($data = mysqli_fetch_array($querytmp)) {
						$ttl = $data['jml'] * $data['harga'];
						echo '<tr>';
						echo '<td class="text-center">' . $i . '</td>';
						echo '<td>' . $data['nama'] . '</td>';
						echo '<td>' . $data['jml'] . '</td>';
						echo '<td>' . format_rupiah($data['harga']) . '</td>';
						echo '<td>' . format_rupiah($ttl) . '</td>';
						echo '</tr>';
						$i++;
						$grand += $ttl;
					}
					?>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="4" class="text-center">Total </th>
						<th class="text-right"><?php echo format_rupiah($grand); ?></th>
					</tr>
				</tfoot>
			</table>
			<br />
		</div><!-- /.container -->
	</section>

	<!-- <script type="text/javascript">
		$(document).ready(function() {
			window.print();
		});
	</script> -->

	<!-- Bootstrap Core JavaScript -->
	<script src="libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- jTebilang JavaScript -->
	<script src="libs/jTerbilang/jTerbilang.js"></script>

</body>

</html>