<?php
include('koneksi.php');
$sql = mysqli_fetch_array(mysqli_query($koneksi, "select * from transaksi where id_transaksi = $_GET[kd_transaksi]"));
?>
<html>

<head>
  <title>Print kwitansi {{kwitansiNo}}</title>
  <style type="text/css">
    .lead {
      font-family: "Verdana";
      font-weight: bold;
    }

    .value {
      font-family: "Verdana";
    }

    .value-big {
      font-family: "Verdana";
      font-weight: bold;
      font-size: large;
    }

    .td {
      vertical-align: top;
    }

    /* @page { size: with x height */
    /*@page { size: 20cm 10cm; margin: 0px; }*/
    @page {
      size: A4;
      margin: 0px;
    }

    /*		@media print {
			  html, body {
			  	width: 210mm;
			  }
			}*/
    /*body { border: 2px solid #000000;  }*/
  </style>
  <script type="text/javascript">
    var beforePrint = function() {};

    var afterPrint = function() {
      document.location.href = '/{{hospitalName}}';
    };

    if (window.matchMedia) {
      var mediaQueryList = window.matchMedia('print');
      mediaQueryList.addListener(function(mql) {
        if (mql.matches) {
          beforePrint();
        } else {
          afterPrint();
        }
      });
    }

    window.onbeforeprint = beforePrint;
    window.onafterprint = afterPrint;
  </script>
</head>

<body>

  <table border="1px">
    <tr>
      <td width="80px"><img src="/img/{{k.imagePath}}" width="80px" /></td>
      <td>
        <table cellpadding="4">
          <tr>
            <td width="200px">
              <div class="lead">No kwitansi:
            </td>
            <td>
              <div class="value"><?= $sql['id_transaksi'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">Nama</div>
            </td>
            <td>
              <div class="value"><?= $sql['nama'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">Username</div>
            </td>
            <td>
              <div class="value"><?= $sql['username'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">Email</div>
            </td>
            <td>
              <div class="value"><?= $sql['email'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">Alamat</div>
            </td>
            <td>
              <div class="value-big"><?= $sql['alamat'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">Kode Pos</div>
            </td>
            <td>
              <div class="value"><?= $sql['pos'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">Kota</div>
            </td>
            <td>
              <div class="value"><?= $sql['kota'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">No HP</div>
            </td>
            <td>
              <div class="value"><?= $sql['hp'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">No Rekening</div>
            </td>
            <td>
              <div class="value"><?= $sql['no_rek'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">Nama Rekening</div>
            </td>
            <td>
              <div class="value"><?= $sql['nama_rek'] ?></div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="lead">Bank</div>
            </td>
            <td>
              <div class="value"><?= $sql['bank'] ?></div>
            </td>
          </tr>
          <tr>
            <td colspan="2">&nbsp;</td>
          </tr>

        </table>
      </td>
    </tr>
  </table>
  <hr>

  <script src="/js/jquery.min.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      window.print();
    });
  </script>
</body>

</html>