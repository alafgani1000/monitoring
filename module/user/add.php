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
 ?>
<?php

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form")) {
	if (!empty($_FILES["poto"]["tmp_name"]))
{
$jenis_gambar=$_FILES['poto']['type']; //memeriksa format gambar
if($jenis_gambar=="img/user/jpeg" || $jenis_gambar=="img/user/jpg" || $jenis_gambar=="img/user/gif" || $jenis_gambar=="img/user/png")
{
$lampiran = $namafolder . basename($_FILES['poto']['name']);
if (move_uploaded_file($_FILES['poto']['tmp_name'], $lampiran)) {
	} else {
echo "Gambar gagal dikirim";
}
} else {
echo "Jenis gambar yang anda kirim salah. Harus .jpg .gif .png";
}
} else {
echo "Anda belum memilih gambar";
}
  $insertSQL = sprintf("INSERT INTO user_login (user_name, password, `level`, nm_jabatan, poto) VALUES (%s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['user_name'], "text"),
                       GetSQLValueString($_POST['password'], "text"),
                       GetSQLValueString($_POST['level'], "text"),
                       GetSQLValueString($_POST['nm_jabatan'], "text"),
					   GetSQLValueString($lampiran, "text"));
	move_uploaded_file($tmp,"img/user/$lampiran");
	

//mengupload gambar da
	mysql_select_db($database_koneksi, $koneksi);
	$Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());
  
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
				<h1>Tambah User</h1>
				<span></span> 
			</div>      
			<form action="<?php echo $editFormAction; ?>" name="form"  method="POST" enctype="multipart/form-data" class="block-content form">
				<div class="_25">
					<p>
						<label for="nm_barang">Username</label>
						<input id="textfield2" name="user_name" class="required" type="text" value="<?php echo $newID ?>" />
					</p>
				</div>
				<div class="_25">
					<p>
						<label for="textarea">Password</label>
						<input id="textfield" name="password" class="required" type="password" value="" />
					</p>
				</div>
				<div class="_25">
					<p><label>Level</label>
						<select name="level" id="level">
							<?
								mysql_connect("localhost","root","");
								mysql_select_db("prod_ap");
								$sql1 = mysql_query("select * from m_level order by id_lvl ASC");
								echo'<option value="" > -- Pilih Level Admin -- </option>';
								while ($rdt=mysql_fetch_array($sql1)){
									echo '<option value="'.$rdt['level'].'"';
									if ($rdt['level']==$dt['level']){ echo ' selected '; };
									echo '>'.$rdt['level'].'</option>';
								}
							?>
						</select>
					</p>
				</div>      
				<div class="_25">
					<p>
						<label>Jabatan</label>
						<label for="merk2"></label>
						<label for="nm_jabatan"></label>
							<select name="nm_jabatan" id="nm_jabatan">
								<option value="Administrator">Administrator</option>
								<option value="Manager">Manager</option>
								<option value="SPV">SPV</option>
								<option value="Leader">Leader</option>
								<option value="Marketing">Marketing</option>
							</select>
					</p>
				</div>
				<div class="clear"></div>
				<div class="_25">
					<p><label> SEARCH PHOTO PROFIL :</label><input type="file" name="poto" id="poto"></p>
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
			</form>
		</div>
	</div>
<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1");
var spryselect2 = new Spry.Widget.ValidationSelect("spryselect2");
</script>