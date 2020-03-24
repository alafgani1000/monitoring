<?php //require_once('../../Connections/koneksi.php'); ?>
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

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}


if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "validate-form")) {
  $insertSQL = sprintf("INSERT INTO m_line_sub (id_subline,line_prod,sub_line,nm_line,tgl_entry,user_posting) VALUES ( %s, %s, %s, %s, %s, %s)",
                       GetSQLValueString($_POST['id_subline'], "text"),
                       GetSQLValueString($_POST['line_prod'], "text"),
                       GetSQLValueString($_POST['sub_line'], "text"),
                       GetSQLValueString($_POST['nm_line'], "text"),
					   GetSQLValueString($_POST['tgl_entry'], "date"),
					   GetSQLValueString($_POST['user_posting'], "text"));
  mysql_select_db($database_koneksi, $koneksi);
  $Result1 = mysql_query($insertSQL, $koneksi) or die(mysql_error());
  
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

<script src="../../SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
<link href="../../SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css" />

<div class="grid_12"> 
   <br/>
 <!--
<a href='?mod=m_departmen&amp' class='button red'>
   <span>Back</span>
   </a></div> -->


<div class="grid_12">
<?php 
		  echo $pesan ;
		?>
</div>

<div class="grid_8">
  <div class="block-border">
    <div class="block-header">
      <h1>Add Line Produksi A/P</h1>
      <span></span> </div>
      
    <form  action="<?php echo $editFormAction; ?>" method="POST" enctype="multipart/form-data" class="block-content form" >
      <div class="_50">
        <p>
          <label for="">Nama Line</label>
          <input id="" name="line_prod" style="text-align:center" class="required" type="text" />
        </p>
      </div>
	  <div class="_25">
        <p>
          <label for="jobs">Line Produksi</label>
          <input id="" name="sub_line" type="text" value="" class="required" />
        </p>
      </div>
	  <div class="_25">
		<p>
			<label for="textarea">Line</label>
			<select name="nm_line" id="dept" required>
				<?
					$sql1 = mysql_query("select * from m_line order by id_line ASC");
					echo'<option value="" > -- Pilih Line A/P -- </option>';
					while ($rdt=mysql_fetch_array($sql1)){
						echo '<option value="'.$rdt['line'].'"';
						if ($rdt['line']==$dt['nm_line']){ echo ' selected '; };
						echo '>'.$rdt['line'].'</option>';
					}
				?>
			</select>
		</p> 
      </div>
     <div class="clear"></div>	       
      <div class="block-actions">
        <ul class="actions-left">
          <li><a class="button red"  href="?mod=m_subline">Back</a>
		    <input type="hidden" name="tgl_entry" id="tgl_entry" value="<?php echo date('Y-m-d');?>" />
            <input type="hidden" name="user_posting" id="user_posting" value="<?php echo $_SESSION['MM_Username']; ?>" />
          </li>
        </ul>
        <ul class="actions-right">
          <li>
            <input type="submit" class="button" value="Save" />
          </li>
        </ul>
      </div>
      <input type="hidden" name="MM_insert" value="validate-form" />
    </form>
  </div>
</div>

<script type="text/javascript">
var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1");
var spryselect2 = new Spry.Widget.ValidationSelect("spryselect2");
</script>
