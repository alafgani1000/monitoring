<?php require_once('Connections/koneksi.php');// require_once('../../Connections/koneksi.php'); ?>
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
$query_shift = "Select * from m_shift";
$rs_shift = mysql_query($query_shift, $koneksi) or die(mysql_error());
$row_rs_shift = mysql_fetch_assoc($rs_shift);
$totalRows_rs_shift = mysql_num_rows($rs_shift);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<!--tombol tambah -->
<div class="grid_12"> 
   <br/>
   <a href='?mod=m_shift&amp;act=add' class='button'>
   <span>Add Shift</span>
   </a></div>

<!-- Data  -->
<div class="grid_12">
  <div class="block-border">
    <div class="block-header">
      <h1>Data Shift & Act Jam Kerja</h1>
      <span></span> </div>
    <div class="block-content">
      <table id="table-example" class="table" cellpadding="0" cellspacing="0" border="0">
        <thead>
          <tr>
            <th><center>Id Shift</center></th>
            <th><center>Shift</center></th>
            <th><center>Jam Masuk</center></th>
            <th><center>Jam Pulang</center></th>
            <th><center>Jam Istirahat</center></th>
            <th><center>Jam 2 S</center></th>
            <th><center>Actual Jam Kerja</center></th>
            <th><center>Action</center></th>
          </tr>
        </thead>
        <tbody>
         <?php $no = 1;?>
          <?php do { ?>
            <tr class=gradeX>			
			  <td ><center><?php echo $no++ ?></center></td>
			  <td>&nbsp; <?php echo $row_rs_shift['shift']; ?></td>
			  <td><center>&nbsp; <?php echo $row_rs_shift['start_kerja']; ?></center></td>
			  <td><center>&nbsp; <?php echo $row_rs_shift['end_kerja']; ?></center></td>
			  <td><center>&nbsp; <?php echo $row_rs_shift['break'];?> Menit</center></td>
			  <td><center>&nbsp;<?php echo $row_rs_shift['clean'];?> Menit</center></td>
			  <td><center>&nbsp;<?php echo $row_rs_shift['ttl_jam_actual'];?> Jam</center></td>
			  <td width="90"><center> <a href="?mod=m_shift&amp;act=delete&id_shift=<?php echo $row_rs_shift['id_shift']; ?>" onclick="return confirm('Hapus Data <?php echo $row_rs_shift['shift']; ?> ')">
				  <img src="img/icons/packs/silk/16x16/cross.png" width="16" height="16" alt="Hapus" title="Hapus" /></a> |
				  <a href="?mod=m_shift&amp;act=edit&id_shift=<?php echo $row_rs_shift['id_shift']; ?>"><img src="img/icons/packs/fugue/16x16/block--arrow.png" width="16" height="16" alt="Detail" title="Detail" /></a></center>
			  </td>
            </tr>
            <?php } while ($row_rs_shift = mysql_fetch_assoc($rs_shift)); ?>
        </tbody>
      </table>
    </div>
  </div>
</div>
</body>
</html>
<?php
mysql_free_result($rs_shift);
?>
