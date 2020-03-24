<?php require_once('Connections/accpac/koneksi.php');// require_once('../../Connections/koneksi.php'); ?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mssql_real_escape_string") ? mssql_real_escape_string($theValue) : mssql_real_escape_string($theValue);

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
$colname_rs_detail = "-1";
if (isset($_GET['ITEMNO'])) {
  $colname_rs_detail = $_GET['ITEMNO'];
}
mssql_select_db($database_koneksi, $koneksi);
$query_rs_detail = "SELECT DISTINCT dbo.ICBOMH.ITEMNO,dbo.ICBOMH.BOMNO,dbo.ICITEM.[DESC] as ketta,dbo.ICITEM.AUDTUSER,dbo.ICITEM.AUDTDATE,dbo.ICITEM.INACTIVE FROM dbo.ICBOMH INNER JOIN dbo.ICITEM ON dbo.ICBOMH.ITEMNO = dbo.ICITEM.ITEMNO
WHERE dbo.ICBOMH.ITEMNO='$colname_rs_detail' and dbo.ICBOMH.BOMNO IN ('R0') and dbo.ICITEM.INACTIVE IN('0')";
$rs_detail = mssql_query($query_rs_detail, $koneksi);
$row_rs_detail = mssql_fetch_assoc($rs_detail);
$totalRows_rs_detail = mssql_num_rows($rs_detail);
mssql_select_db($database_koneksi, $koneksi);
$query_lvl = "SELECT dbo.ICBOMH.ITEMNO,dbo.ICITEM.[DESC],dbo.ICBOMH.BOMNO,dbo.ICITEM.INACTIVE,dbo.ICBOMD.COMPONENT,a.[DESC] as kett,dbo.ICBOMD.QTY,dbo.ICBOMD.UNIT,dbo.ICBOMD.BOMNO as NOBOM,a.INACTIVE FROM
				dbo.ICBOMH
				INNER JOIN dbo.ICITEM ON dbo.ICBOMH.ITEMNO = dbo.ICITEM.ITEMNO INNER JOIN dbo.ICBOMD ON dbo.ICBOMH.ITEMNO = dbo.ICBOMD.ITEMNO INNER JOIN dbo.ICITEM AS a ON dbo.ICBOMD.COMPONENT = a.ITEMNO
				WHERE dbo.ICBOMH.ITEMNO='$colname_rs_detail' AND dbo.ICBOMH.BOMNO IN ('R0') AND  dbo.ICITEM.INACTIVE IN ('0') AND dbo.ICBOMD.BOMNO IN ('R0') AND a.INACTIVE IN ('0')";
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

<!--tombol Kembali -->
<div class=grid_12> 
	<br/>
	<a href='?mod=m_matdet' class='button red'><span>Back</span></a>
</div>

<!--Detail Data -->
<div class="grid_12">
	<div class="block-border">
		<div class="block-header">
			<h1>Master BOM</h1>
			<span></span> 
		</div>
			<form name="form" enctype="multipart/form-data" class="block-content form">
			 <center><legend><font size="15"><b><u>BOM A/P</u></b></font></legend></center><br>
					<div class="_50">		
							<table width="200" border="0" align="center">
							  <tr>
								<td width="190" align="center" valign="top"><img src="../../airpump/img/yialm.png" align="center"></a></td>
							  </tr>
							</table>
					</div>
					<div class="_50">			
						<fieldset>
						  <legend><b>PRODUCT AIRPUMP</b></legend>
							<ul class="block-list">
								<li>
								  <table  border="0" cellpadding="0" cellspacing="0">
									<tr>
									  <td width="131" height="22"><b>Code Part</b></td>
									  <td width="21">:</td>
									  <td width="250"><font size="4"><b><?php echo $row_rs_detail['ITEMNO']; ?></b></font></td>
									</tr>
								  </table>
								</li>
								<li>
								  <table border="0" cellpadding="0" cellspacing="0">
									<tr>
									  <td width="131" height="22"><b>Type Product</b></td>
									  <td width="20">:</td>
									  <td width="250"><font size="4"><b><?php echo $row_rs_detail['ketta']; ?></b></font></td>
									</tr>
								  </table>
								</li>
								<li>
								  <table border="0" cellpadding="0" cellspacing="0">
									<tr>
									  <td width="130" height="22"><b>BOM Rev</b></td>
									  <td width="20">:</td>
									  <td width="250"><font size="4"><b><?php echo $row_rs_detail['BOMNO']; ?></b></font></td>
									</tr>
								  </table>
								</li>
								<li>
								  <table border="0" cellpadding="0" cellspacing="0">
									<tr>
									  <td width="130" height="22"><b>Tanggal Update</b></td>
									  <td width="20">:</td>
									  <td width="250"><font size="2"><b><?php $dat=$row_rs_detail['AUDTDATE']; echo $dr=date("d-F-Y",strtotime ($dat)) ?></b></font></td>
									</tr>
								  </table>
								</li>
								<li>
								  <table border="0" cellpadding="0" cellspacing="0">
									<tr>
									  <td width="130" height="22"><b>User Accses</b></td>
									  <td width="20">:</td>
									  <td width="250"><font size="2"><b><?php echo $row_rs_detail['AUDTUSER']; ?></b></font></td>
									</tr>
								  </table>
								</li>
							</ul>
						</fieldset>
					</div>					
					<fieldset> 
						<legend><b>Component List</b></legend><br>
						<div class="_100">
							<div class="block-header">
							  <h1>Description Material </h1>
							  <span></span>
							</div>
							<div class="block-content">
							  <table id="table" class="table" cellpadding="0" cellspacing="0" border="0">
								<thead>
								  <tr>
									<th width="10%"><center>NO </center></th>
									<th width="15%"><center>Kode Accpac</center></th>
									<th width="20%"><center>Nama Barang</center></th>												
									<th width="15%"><center>Quantity<br> Request based on BOM</br></center></th>
									<th width="10%"><center>Unit</center></th>									
								  </tr>
								</thead>
								<tbody>
								  <?php $no = 1;?>
								  <?php do { ?>
								  <tr class="gradeX">
									<td width="10%"><center><input style="text-align:center" value="<?php echo $no++; ?>" readonly="readonly" type="text" /></center></td>
									<td width="15%"><input value="<?php echo $row_rs_lvl['COMPONENT']; ?>" readonly="readonly" type="text" /></td>
									<td width="20%"><input value="<?php echo $row_rs_lvl['kett']; ?>" readonly="readonly" type="text" /></td>
									<td width="10%"><div align="right"><input style="text-align:center" value="<?php echo $row_rs_lvl['QTY']; ?>" readonly="readonly" type="text" /></div></td>
									<td width="15%"><center><input style="text-align:center" value="<?php echo $row_rs_lvl['UNIT']; ?>" readonly="readonly" type="text" /></center></td>
									</tr>
								  <?php } while ($row_rs_lvl = mssql_fetch_assoc($rs_lvl)); ?>
								</tbody>
							  </table>
							</div>
						</div>
						<div class="clear"></div>
					</fieldset>
	  </form>    
  </div>
</div>
<div class="grid_12" align="right"> 
	<br/>
	<a href='?mod=m_matdet' class='button red'><span>Back</span></a>
</div>
</body>
</html>
<?php
mssql_free_result($rs_detail);
?>
