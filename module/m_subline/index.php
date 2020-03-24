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
$query_line = "Select * from m_line_sub order by id_subline ASC";
$rs_line = mysql_query($query_line, $koneksi) or die(mysql_error());
$row_rs_line = mysql_fetch_assoc($rs_line);
$totalRows_rs_line = mysql_num_rows($rs_line);
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
   <a href='?mod=m_subline&amp;act=add' class='button'>
   <span>Add SubLine</span>
   </a></div>

<!-- Data  -->
<div class="grid_12">
  <div class="block-border">
    <div class="block-header">
      <h1>Data SubLine Produksi A/P</h1>
      <span></span> </div>
    <div class="block-content">
      <table id="table-example" class="table" cellpadding="0" cellspacing="0" border="0">
        <thead>
          <tr>
            <th><center>Id Line</center></th>
            <th><center>Nama OP Line</center></th>
            <th><center>Line Produksi</center></th>
            <th><center>Group Line</center></th>
            <th><center>Action</center></th>
          </tr>
        </thead>
        <tbody>
         <?php $no = 1;?>
          <?php do { ?>
            <tr class=gradeX>			
			  <td ><center><?php echo $no++ ?></center></td>
			  <td>&nbsp; <?php echo $row_rs_line['line_prod']; ?></td>
			  <td>&nbsp; <?php echo $row_rs_line['sub_line']; ?></td>
			  <td>&nbsp; <?php echo $row_rs_line['nm_line']; ?></td>
			  <td width="90"><center> <a href="?mod=m_subline&amp;act=delete&id_subline=<?php echo $row_rs_line['id_subline']; ?>" onclick="return confirm('Hapus Data <?php echo $row_rs_line['sub_line']; ?> ')">
				  <img src="img/icons/packs/silk/16x16/cross.png" width="16" height="16" alt="Hapus" title="Hapus" /></a> |
				  <a href="?mod=m_subline&amp;act=edit&id_subline=<?php echo $row_rs_line['id_subline']; ?>"><img src="img/icons/packs/fugue/16x16/block--arrow.png" width="16" height="16" alt="Detail" title="Detail" /></a></center>
			  </td>
            </tr>
            <?php } while ($row_rs_line = mysql_fetch_assoc($rs_line)); ?>
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
