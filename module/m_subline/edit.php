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
$query_rs_cs = "SELECT * FROM m_line ORDER BY id_line ASC";
$rs_cs = mysql_query($query_rs_cs, $koneksi) or die(mysql_error());
$row_rs_cs = mysql_fetch_assoc($rs_cs);
$totalRows_rs_cs = mysql_num_rows($rs_cs);

$colname_rs_edit = "-1";
if (isset($_GET['id_subline'])) {
  $colname_rs_edit = $_GET['id_subline'];
}
$query_rs_edit = sprintf("SELECT * FROM m_line_sub WHERE id_subline=%s", GetSQLValueString($colname_rs_edit, "text"));
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
  $updateSQL = sprintf("UPDATE m_line_sub SET line_prod=%s, sub_line=%s,nm_line=%s, tgl_entry=%s, user_posting=%s WHERE id_subline=%s",
                       GetSQLValueString($_POST['line_prod'], "text"),
                       GetSQLValueString($_POST['sub_line'], "text"),
                       GetSQLValueString($_POST['nm_line'], "text"),
					   GetSQLValueString($_POST['tgl_entry'], "date"),
					   GetSQLValueString($_POST['user_posting'], "date"),
                       GetSQLValueString($_POST['id_subline'], "text"));

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

<div class="grid_8">
  <div class="block-border">
    <div class="block-header">
      <h1>Edit Line Produksi</h1>
	  <span></span> 
	</div>
      
    <form name="form"  action="<?php echo $editFormAction; ?>" method="POST" enctype="multipart/form-data" class="block-content form">
      <div class="_20">
        <p>
          <label for="nm_barang">Id SubLine </label>
          <input name="id_subline" type="text" style="text-align:center" id="textfield2" value="<?php echo $row_rs_edit['id_subline']; ?>" readonly="readonly" />
        </p>
      </div>
	  <div class="clear"></div>
      <div class="_50">
        <p>
          <label for="no_bagian">Line Produksi</label>
          <input id="" name="line_prod" style="text-align:center" value="<?php echo $row_rs_edit['line_prod']; ?>" class="required" type="text" />
        </p>
      </div>
	  <div class="_30">
        <p>
          <label for="jobs">Sub Line</label>
          <input id="" name="sub_line" class="required" type="text" value="<?php echo $row_rs_edit['sub_line']; ?>" />
        </p>
      </div>
      <div class="_20">
		<p>
			<label for="textarea">Department</label>
			<select name="nm_line" id="nm_cus">
				<option><?php echo $row_rs_edit['nm_line']; ?></option>
				<?php do { ?>
				<option style="text-align:center" value="<?php echo $row_rs_cs['line']; ?>"> <?php echo $row_rs_cs['line']; ?></option>
				<?php  } while ($row_rs_cs = mysql_fetch_assoc($rs_cs)); ?>	
			  </select>
		</p> 
      </div>
     <div class="clear"></div>	      
      <div class="block-actions">
        <ul class="actions-left">
          <li><a class="button red"  href="?mod=m_subline">Back</a></li>
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