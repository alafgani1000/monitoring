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
$colname_rs_edit = "-1";
if (isset($_GET['user_id'])) {
  $colname_rs_edit = $_GET['user_id'];
}
mysql_select_db($database_koneksi, $koneksi);
$query_rs_edit = sprintf("SELECT * FROM user_login WHERE user_id = %s", GetSQLValueString($colname_rs_edit, "int"));
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
  $updateSQL = sprintf("UPDATE user_login SET user_name=%s, password=%s, `level`=%s, nm_jabatan=%s WHERE user_id=%s",
                       GetSQLValueString($_POST['user_name'], "text"),
                       GetSQLValueString($_POST['password'], "text"),
                       GetSQLValueString($_POST['level'], "text"),
                       GetSQLValueString($_POST['nm_jabatan'], "text"),
                       GetSQLValueString($_POST['user_id'], "int"));

  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($updateSQL, $koneksi) or die(mysql_error());

  
  if ($Result1) {
	  $pesan = '<div class="alert success"><span class="hide">x</span><strong>Berhasil</strong> Data telah disimpan.</div>' ;
	  }
	 else {
		 $pesan = '<div class="alert error"><span class="hide">x</span><strong>Gagal</strong> Data gagal disimipan.</div>';


		 }
}

?>
<!--tombol tambah -->
		<div class=grid_12> 
			<br/>
			<a href='?mod=user' class='button red'>
				<span>Kembali</span>
			</a>
		</div>
		<div class="grid_12">
			<?php 
				echo $pesan ;
			?>
		</div>
<div class="grid_12">
  <div class="block-border">
			<div class="block-header">
				<h1>Edit User</h1>
				<span></span>
			</div>      
    <form action="<?php echo $editFormAction; ?>" name="form"  method="POST" enctype="multipart/form-data" class="block-content form">
		<div class="_25">
			<p>
				<label for="nm_barang">Username</label>
				<input name="user_name" type="text" class="required" id="textfield2" value="<?php echo $row_rs_edit['user_name']; ?>" />
				<input name="user_id" type="hidden" id="user_id" value="<?php echo $row_rs_edit['user_id']; ?>" />
			</p>
		</div>
		<div class="_100">
			<p>
				<label for="textarea">Password</label>
				<input id="textfield" name="password" class="required" type="password" value="<?php echo $row_rs_edit['password']; ?>" />
			</p>
		</div>
		<div class="_100">
			<p>Level
				<label for="merk"></label>
				<label for="level"></label>
					<select name="level" id="level">
						<option value="admin" <?php if (!(strcmp("admin", $row_rs_edit['level']))) {echo "selected=\"selected\"";} ?>>Administrator A/P</option>
						<option value="adminprod" <?php if (!(strcmp("adminprod", $row_rs_edit['level']))) {echo "selected=\"selected\"";} ?>>Produksi A/P</option>
						<option value="admineng" <?php if (!(strcmp("admineng", $row_rs_edit['level']))) {echo "selected=\"selected\"";} ?>>ENG A/P</option>
						<option value="adminppic" <?php if (!(strcmp("adminppic", $row_rs_edit['level']))) {echo "selected=\"selected\"";} ?>>PPIC A/P</option>
					</select>
			</p>
		</div>
		<div class="_100">
			<p>Jabatan
				<label for="merk"></label>
				<label for="nm_jabatan"></label>
					<select name="nm_jabatan" id="nm_jabatan">
						<option value="administrator" <?php if (!(strcmp("administrator", $row_rs_edit['nm_jabatan']))) {echo "selected=\"selected\"";} ?>>administrator</option>
						<option value="Manager" <?php if (!(strcmp("Manager", $row_rs_edit['nm_jabatan']))) {echo "selected=\"selected\"";} ?>>Manager</option>
						<option value="SPV" <?php if (!(strcmp("SPV", $row_rs_edit['nm_jabatan']))) {echo "selected=\"selected\"";} ?>>SPV</option>
						<option value="Leader" <?php if (!(strcmp("Leader", $row_rs_edit['nm_jabatan']))) {echo "selected=\"selected\"";} ?>>Leader</option>
						<option value="Operator" <?php if (!(strcmp("Operator", $row_rs_edit['nm_jabatan']))) {echo "selected=\"selected\"";} ?>>Operator</option>
					</select>
			</p>
		</div>
		<div class="clear"></div>
		<div class="block-actions">
			<ul class="actions-left">
			  <li><a class="button red"  href="?mod=user">Kembali</a></li>
			</ul>
			<ul class="actions-right">
			  <li>
				<input type="submit" class="button" value="Simpan" />
			  </li>
			</ul>
		</div>
		  <input type="hidden" name="MM_insert" value="validate-form" />
		  <input type="hidden" name="MM_insert" value="form" />
		  <input name="user_posting" type="hidden" id="user_posting" value="<?php echo $_SESSION['user_posting']; ?>" />
		  <input type="hidden" name="tgl_posting" id="tgl_posting"  value="<?php echo date('Y-m-d'); ?>"/>
		  <input type="hidden" name="MM_update" value="form" />
    </form>
  </div>
</div>
<?php
mysql_free_result($rs_edit);
?>
