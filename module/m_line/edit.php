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
if (isset($_GET['id_line'])) {
  $colname_rs_edit = $_GET['id_line'];
}
$query_rs_edit = sprintf("SELECT * FROM m_line WHERE id_line=%s", GetSQLValueString($colname_rs_edit, "text"));
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
  $updateSQL = sprintf("UPDATE m_line SET nm_line=%s, line=%s, tgl_entry=%s, user_posting=%s WHERE id_line=%s",
                       GetSQLValueString($_POST['nm_line'], "text"),
                       GetSQLValueString($_POST['line'], "text"),
					   GetSQLValueString($_POST['tgl_entry'], "text"),
					   GetSQLValueString($_POST['user_posting'], "text"),
                       GetSQLValueString($_POST['id_line'], "text"));

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
      <h1>Edit Line Produksi</h1>
	  <span></span> 
	</div>
      
    <form name="form"  action="<?php echo $editFormAction; ?>" method="POST" enctype="multipart/form-data" class="block-content form">
      <div class="_20">
        <p>
          <label for="nm_barang">Id Line </label>
          <input name="id_line" type="text" style="text-align:center" id="textfield2" value="<?php echo $row_rs_edit['id_line']; ?>" readonly="readonly" />
        </p>
      </div>
	  <div class="clear"></div>
      <div class="_50">
        <p>
          <label for="">Nama Line</label>
          <input id="" name="nm_line" style="text-align:center" value="<?php echo $row_rs_edit['nm_line']; ?>" class="required" type="text" />
        </p>
      </div>
	  <div class="_50">
        <p>
          <label for="jobs">Line Produksi</label>
          <input id="" name="line" type="text" value="<?php echo $row_rs_edit['line']; ?>" class="required" />
        </p>
      </div>
     <div class="clear"></div>	      
      <div class="block-actions">
        <ul class="actions-left">
          <li><a class="button red"  href="?mod=m_line">Back</a></li>
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
</script>