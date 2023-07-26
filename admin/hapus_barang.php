<?php
include 'koneksi.php';
$kdbrg = @$_GET['kdbrg'];
mysqli_query($koneksi, "delete from barang where br_id ='$kdbrg'");

?>

<script type="text/javascript">
	alert("Data Berhasil Dihapus");
	window.location.href = "?page=admin&aksi=tampil_barang";
</script>