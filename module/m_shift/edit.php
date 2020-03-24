<?php require_once('Connections/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}
mysql_select_db($database_koneksi, $koneksi);
$colname_rs_edit = "-1";
if (isset($_GET['id_shift'])) {
  $colname_rs_edit = $_GET['id_shift'];
}
$query_rs_edit = sprintf("SELECT * FROM m_shift WHERE id_shift=%s", GetSQLValueString($colname_rs_edit, "text"));
$rs_edit = mysql_query($query_rs_edit, $koneksi) or die(mysql_error());
$row_rs_edit = mysql_fetch_assoc($rs_edit);
$totalRows_rs_edit = mysql_num_rows($rs_edit);
 //require_once('../../Connections/koneksi.php'); ?>
<?php

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_update"])) && ($_POST["MM_update"] == "form")) {
  $updateSQL = sprintf("UPDATE m_shift SET shift=%s, start_kerja=%s,end_kerja=%s,break=%s,breaf=%s,n1=%s,clean=%s,ttl_jam_real=%s,ttl_menit_real=%s,ttl_detik_real=%s,ttl_jam_actual=%s,ttl_mnt_actual=%s,ttl_dtk_actual=%s,ttl_jam_plan=%s,user_posting=%s,tgl_entry=%s WHERE id_shift=%s",
                       GetSQLValueString($_POST['shift'], "text"),
                       GetSQLValueString($_POST['start_kerja'], "text"),
                       GetSQLValueString($_POST['end_kerja'], "text"),
                       GetSQLValueString($_POST['break'], "text"),
                       GetSQLValueString($_POST['breaf'], "text"),
                       GetSQLValueString($_POST['n1'], "text"),
                       GetSQLValueString($_POST['clean'], "text"),
                       GetSQLValueString($_POST['ttl_jam_real'], "text"),
                       GetSQLValueString($_POST['ttl_menit_real'], "text"),
                       GetSQLValueString($_POST['ttl_detik_real'], "text"),
                       GetSQLValueString($_POST['ttl_jam_actual'], "text"),
                       GetSQLValueString($_POST['ttl_mnt_actual'], "text"),
                       GetSQLValueString($_POST['ttl_dtk_actual'], "text"),
                       GetSQLValueString($_POST['ttl_jam_plan'], "text"),
					   GetSQLValueString($_POST['user_posting'], "text"),
					   GetSQLValueString($_POST['tgl_entry'], "text"),
                       GetSQLValueString($_POST['id_shift'], "text"));

  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($updateSQL, $koneksi) or die(mysql_error());


  if ($Result1) {
	  $pesan = '<div class="alert success"><span class="hide">x</span><strong>Berhasil</strong> Data Your Success.</div>' ;
	  }
	 else {
		 $pesan = '<div class="alert error"><span class="hide">x</span><strong>Gagal</strong> Data Error .</div>';


		 }
}


?>
<!--tombol tambah -->
<script src="../../SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
<link href="../../SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css" />

<div class="grid_12">
<?php 
		  echo $pesan ;
		?>
</div>

<div class="grid_6">
  <div class="block-border">
    <div class="block-header">
      <h1>Edit Shift & Jam Actual</h1>
	  <span></span> 
	</div>
      
    <form name="form"  action="<?php echo $editFormAction; ?>" method="POST" enctype="multipart/form-data" class="block-content form">
      <div class="_20">
        <p>
          <label for="nm_barang">Id Shift </label>
          <input name="id_shift" type="text" style="text-align:center" id="textfield2" value="<?php echo $row_rs_edit['id_shift']; ?>" readonly="readonly" />
        </p>
      </div>
	  <div class="clear"></div>
      <div class="_50">
        <p>
          <label for="">Shift</label>
          <input id="shift" name="shift" style="text-align:center" value="<?php echo $row_rs_edit['shift']; ?>" class="required" type="text" />
        </p>
      </div>
	  <div class="_50">
        <p>
          <label for="jobs">Total Jam Kerja Real</label>
          <input id="jamkerja" name="ttl_jam_real" type="text" value="<?php echo $row_rs_edit['ttl_jam_real']; ?>" readonly="readonly" />
        </p>
      </div>
     <div class="clear"></div>
	       <div class="_50">
        <p>
          <label for="">Jam Masuk</label>
          <input id="start" name="start_kerja" style="text-align:center" value="<?php echo $row_rs_edit['start_kerja']; ?>" class="required" type="text" />
        </p>
      </div>
	  <div class="_50">
        <p>
          <label for="jobs">Total Menit Kerja Real</label>
          <input id="menitkerja" name="ttl_menit_real" readonly="readonly" value="<?php echo $row_rs_edit['ttl_menit_real']; ?>" type="text" />
        </p>
      </div>
     <div class="clear"></div>
	       <div class="_50">
        <p>
          <label for="">Jam Keluar</label>
          <input id="end" name="end_kerja" style="text-align:center" value="<?php echo $row_rs_edit['end_kerja']; ?>" class="required" type="text" />
        </p>
      </div>
	  <div class="_50">
        <p>
          <label for="jobs">Total Detik Kerja Real</label>
          <input id="totaldetik" name="ttl_detik_real" readonly="readonly" type="text" value="<?php echo $row_rs_edit['ttl_detik_real']; ?>" />
        </p>
      </div>
     <div class="clear"></div>
	       <div class="_50">
        <p>
          <label for="">Istirahat</label>
          <input id="istirahat" name="break" style="text-align:center" class="required" value="<?php echo $row_rs_edit['break']; ?>" type="text" />
        </p>
      </div>
	  <div class="_50">
        <p>
          <label for="jobs">Total Jam Kerja Actual</label>
          <input id="totaljamkerja" name="ttl_jam_actual" readonly="readonly" type="text" value="<?php echo $row_rs_edit['ttl_jam_actual']; ?>" />
        </p>
      </div>
     <div class="clear"></div>
	       <div class="_50">
        <p>
          <label for="">Meeting Pagi</label>
          <input id="meeting" name="breaf" style="text-align:center" class="required" value="<?php echo $row_rs_edit['breaf']; ?>" type="text" />
        </p>
      </div>
	  <div class="_50">
        <p>
          <label for="jobs">Total Menit Kerja Actual</label>
          <input id="totalmenitkerja" name="ttl_mnt_actual" readonly="readonly" type="text" value="<?php echo $row_rs_edit['ttl_mnt_actual']; ?>" />
        </p>
      </div>     
     <div class="clear"></div>
	       <div class="_50">
        <p>
          <label for="">Pokayoke</label>
          <input id="n1" name="n1" style="text-align:center" onkeyup="hitung()" class="required" value="<?php echo $row_rs_edit['n1']; ?>" type="text" />
        </p>
      </div>
	  <div class="_50">
        <p>
          <label for="jobs">Total Detik Kerja Actual</label>
          <input id="totaldetikkerja" name="ttl_dtk_actual" readonly="readonly" type="text" value="<?php echo $row_rs_edit['ttl_dtk_actual']; ?>" />
        </p>
      </div>
	  <div class="clear"></div>
	       <div class="_50">
        <p>
          <label for="">2 S</label>
          <input id="duas" name="clean" onkeyup="hitung()" style="text-align:center" value="<?php echo $row_rs_edit['clean']; ?>" class="required" type="text" />
        </p>
      </div>
	  <div class="_50">
        <p>
          <label for="jobs">Total Jam Kerja FIX</label>
          <input id="totaljamkerjaplan" name="ttl_jam_plan" readonly="readonly" type="text" value="<?php echo $row_rs_edit['ttl_jam_plan']; ?>" />
        </p>
      </div>
     <div class="clear"></div>
      <div class="block-actions">
        <ul class="actions-left">
          <li><a class="button red"  href="?mod=m_shift">Back</a></li>
        </ul>
        <ul class="actions-right">
          <li>
            <input type="submit" class="button" value="Save" />
          </li>
        </ul>
      </div>
      <input type="hidden" name="MM_insert" value="validate-form" />
	  <input type="hidden" name="tgl_entry" id="tgl_entry" value="<?php echo date('Y-m-d');?>" />
      <input type="hidden" name="user_posting" id="user_posting" value="<?php echo $_SESSION['MM_Username']; ?>" />
      <input type="hidden" name="MM_update" value="form" />
    </form>
  </div>
</div>
<?php
mysql_free_result($rs_edit);
?>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
function hitung() {
		var start = document.getElementById('start').value;
		var end = document.getElementById('end').value;
		start 	= start.split(":");
		end 	= end.split(":");
		// alert('start');
		if(start == end){
			alert('Maaf silahkan isi jam masuk / pulang terlebih dahulu');
			$('#istirahat').val('');
			$('#n1').val('');
			$('#meeting').val('');
			$('#duas').val('');
		}else{
			var istirahat = $('#istirahat').val();
			var n1 = $('#n1').val();
			var meeting = $('#meeting').val();
			var duas = $('#duas').val();
			if(istirahat=="" || n1=="" || meeting==""){
				alert('Maaf silahkan isi  istirahat, meeting & n1 terlebih dahulu,\nbaru mengisi 2S suapaya dapat menghitung kalkulasi waktu kerja');
				$('#duas').val('');
			}else{			
				if(eval(end[0]) < eval(start[0])){
					var jam_first = (parseInt(start[0])) * 60;
					var menit_first = parseInt(start[1]);
					var hasil_first = jam_first + menit_first;			
					var jam_second = (parseInt(end[0])+24) * 60;
					var menit_second = parseInt(end[1]);
					var hasil_second = jam_second + menit_second;
					var selisih = hasil_second - hasil_first;
					var jam = Math.floor(selisih / 60);
					var menit = selisih - (jam * 60);
					var totaldetik = selisih * 60;
				}else{
					var jam_first = parseInt(start[0]) * 60;
					var menit_first = parseInt(start[1]);
					var hasil_first = jam_first + menit_first;			
					var jam_second = parseInt(end[0]) * 60;
					var menit_second = parseInt(end[1]);
					var hasil_second = jam_second + menit_second;
					var selisih = hasil_second - hasil_first;
					var jam = Math.floor(selisih / 60);
					var menit = selisih - (jam * 60);
					var totaldetik = selisih * 60;
				}
				
				document.getElementById('jamkerja').value = jam +":"+menit;
				document.getElementById('menitkerja').value = selisih;
				document.getElementById('totaldetik').value = totaldetik;
				
				var totalmenitkerja = selisih - (eval(istirahat) + eval(meeting) + eval(n1) + eval(duas));
				var totaldetikkerja = totalmenitkerja * 60;
				var totaljamkerja = totalmenitkerja / 60;
				var totaljamkerjaplan = jam - 90 / 60;
				$('#totalmenitkerja').val(totalmenitkerja);
				$('#totaldetikkerja').val(totaldetikkerja);
				$('#totaljamkerja').val(totaljamkerja.toFixed(2));
				$('#totaljamkerjaplan').val(totaljamkerjaplan.toFixed(2));
			}
		}
	}
</script>