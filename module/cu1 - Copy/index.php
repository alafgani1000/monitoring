<?php require_once('Connections/accpac/koneksi.php');// require_once('../../Connections/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mssql_real_escape_string") ? mssql_real_escape_string($theValue) : mssql_escape_string($theValue);

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

mssql_select_db($database_koneksi, $koneksi);
$query_lvl = "SELECT dbo.ICBOMH.ITEMNO,dbo.ICITEM.[DESC] as kett,dbo.ICBOMH.BOMNO,dbo.ICBOMH.AUDTDATE,dbo.ICITEM.STOCKUNIT,dbo.ICITEM.STOCKITEM,dbo.ICBOMH.AUDTUSER
				FROM dbo.ICBOMH INNER JOIN dbo.ICITEM ON dbo.ICBOMH.ITEMNO = dbo.ICITEM.ITEMNO
				WHERE dbo.ICBOMH.BOMNO in ('R0') AND dbo.ICITEM.CATEGORY LIKE 'F%' AND dbo.ICITEM.CATEGORY LIKE '%CU'
				AND dbo.ICITEM.CNTLACCT NOT LIKE '%OTH' AND dbo.ICBOMH.ITEMNO NOT LIKE ('SP%') and dbo.ICBOMH.ITEMNO NOT LIKE ('825%') and dbo.ICBOMH.ITEMNO NOT LIKE ('821%')
				and dbo.ICBOMH.ITEMNO NOT LIKE ('877%') and dbo.ICBOMH.ITEMNO NOT LIKE ('861%')and dbo.ICBOMH.ITEMNO NOT LIKE ('871%') 
				AND dbo.ICBOMH.BOMNO IN ('R0') AND dbo.ICITEM.INACTIVE IN ('0')";
$rs_lvl = mssql_query($query_lvl, $koneksi);
$row_rs_lvl = mssql_fetch_assoc($rs_lvl);
$totalRows_rs_lvl = mssql_num_rows($rs_lvl);
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
    <a href='?mod=m_matdet' class='button'>
		<span>BACK TO BOM</span>
    </a>
</div>

<!-- Data  -->
	<table border="0">
		<tr>
			<td width="50%"> </td>
			<td align="right"  width="70%"><b> <?php echo date('D, M-Y');?><b></td>
			<td width="70%"> </td>
		</tr>
	</table>
      <table id="table-example" class="table" cellpadding="0" cellspacing="0" border="0">
        <thead>
          <tr>
            <th><center>Item Number</center></th>
            <th><center>Type Produk</center></th>
            <th><center>Plan Qty Total</center></th>
            <th><center>Actual Qty Actual</center></th>
            <th><center>Balance</center></th>
            <th><center>Detail</center></th>
          </tr>
        </thead>
        <tbody>
         <?php $no = 1;?>
          <?php do { ?>
            <tr class=gradeX>			
			  <td width="5%"><?php echo $row_rs_lvl['ITEMNO']; ?></td>
			  <td width="5%"><?php echo $row_rs_lvl['kett']; ?></td>
			  <td width="5%"><center></center></td>
			  <td width="5%"><center></center></td>
			  <td width="5%"><center></center></td>
			  <td width="5%"><center></center></td>
            </tr>
            <?php } while ($row_rs_lvl = mssql_fetch_assoc($rs_lvl)); ?>
        </tbody>
      </table>
   
</body>
</html>
<?php
mssql_free_result($rs_dpt);
?>
