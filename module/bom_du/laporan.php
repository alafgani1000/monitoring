<?php
    header("Content-type: application/octet-stream");
    header("Content-Disposition: attachment; filename='$_GET[ITEMNO]'.xls");//ganti nama sesuai keperluan
    header("Pragma: no-cache");
    header("Expires: 0");
   //disini script report excel
	include ("../../Connections/accpac/koneksi.php");
	mssql_select_db($database_koneksi, $koneksi);
	$colname_rs_detail = "-1";
	if (isset($_GET['ITEMNO'])) {
	  $colname_rs_detail = $_GET['ITEMNO'];
	}
	$query_rs_req = "SELECT DISTINCT a.ITEMNO,b.[DESC]AS kett,a.BOMNO,b.AUDTDATE,b.AUDTUSER FROM ICBOMH a JOIN ICITEM b on b.ITEMNO=a.ITEMNO 
						WHERE a.ITEMNO = '$_GET[ITEMNO]' and a.BOMNO IN ('R0') and b.INACTIVE IN('0') ";
	$rs_req = mssql_query($query_rs_req, $koneksi);
	$row_rs_req = mssql_fetch_assoc($rs_req);
	$totalRows_rs_req = mssql_num_rows($rs_req);
	// var_dump($rs_req);
	// exit;
	$query_rs_det = "SELECT DISTINCT b.ITEMNO,b.COMPONENT,a.[DESC] AS keterangan,b.QTY,b.UNIT,b.BOMNO,a.COMMENT4 ,b.[LINENO]
FROM [dbo].[ICITEM] a JOIN ICBOMD b ON b.COMPONENT=a.ITEMNO
 WHERE b.ITEMNO='$_GET[ITEMNO]' and b.BOMNO IN('R0') and a.INACTIVE IN ('0') order by b.[LINENO]";
	$rs_det = mssql_query($query_rs_det, $koneksi) or die(mssql_error());
	$row_rs_det = mssql_fetch_assoc($rs_det);
	$totalRows_rs_det = mssql_num_rows($rs_det);
	
	$memek = "SELECT DISTINCT dbo.ICIOTH.ITEMDESC,dbo.ICIOTH.COMMENT,dbo.ICIOTH.AUDTUSER,dbo.ICIOTH.ITEMNO
				FROM dbo.ICIOTH
				INNER JOIN dbo.ICITEM ON dbo.ICIOTH.ITEMNO = dbo.ICITEM.ITEMNO
				WHERE dbo.ICIOTH.ITEMNO='$_GET[ITEMNO]'";
	$kontol = mssql_query($memek, $koneksi);
	$ngentot = mssql_fetch_assoc($kontol);
	$bucat = mssql_num_rows($kontol);
?>
<body>
	<form name="form" enctype="multipart/form-data" class="block-content form">
		<table width="97%" border="0" cellspacing="2" cellpadding="1">
			<tr>
				<td>&nbsp;</td>
				<td colspan="4"><div align="right">F-ENG.AP-03/R0</div></td>
			</tr>
			<tr>
				<td width="32%" colspan="3">PT.YASUNAGA INDONESIA</td>
				<td>&nbsp;</td>
				<td  rowspan="7"><div align="center">
					<table width="100%" border="1" cellspacing="2" cellpadding="1">
						<tr>
							<td colspan="6"><div align="center">Date : <?php $thn=date('d-M-Y H:i:s'); echo $thn;?></div></td>
						</tr>
						<tr>
							<td ><div align="center">Dibuat</div></td>
							<td ><div align="center">Check</div></td>
							<td colspan="4"><div align="center">Approval</div></td>
						</tr>
						<tr>
							<td height="65">&nbsp;</td>
							<td>&nbsp;</td>
							<td >&nbsp;</td>
							<td >&nbsp;</td>
							<td >&nbsp;</td>
							<td >&nbsp;</td>
						</tr>
						<tr>
							<td><div align="center">Purniawan</div></td>
							<td><div align="center">Habibi</div></td>
							<td><div align="center">Risto J </div></td>
							<td><div align="center">PPIC</div></td>
							<td><div align="center">Prod</div></td>
							<td><div align="center">Mr.Ando</div></td>
						</tr>
					</table></div>
				</td>
			</tr>
			<tr>
				<td colspan="3">ENGINEERING AIR PUMP </td>
			
			</tr>
			<tr>
				<td colspan="3">&nbsp;</td>
			</tr>  
			<tr>
				<td colspan="3" height="23">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" height="23">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="3">Bill Of Material : <?php echo $row_rs_req['ITEMNO']; ?> </td>
				
			</tr>
			<tr>
				<td colspan="3" ><?php echo $row_rs_req['BOMNO']; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;<?php echo $row_rs_req['kett']; ?></td>
				
			</tr>
		</table><br>
		<table width="100%" border="1">
			<thead>
				<tr>
					<td height="24"  scope="col" align="center">NO </td>
					<td height="24" scope="col" align="center" colspan="1">KODE ACCPAC</td>
					<td height="24" scope="col" align="center" colspan="2">KOMPONEN</td>
					<td height="24" scope="col" align="center" colspan="4">SUPPLIER</td>
					<td height="24" scope="col" align="center">UNIT</td>
					<td height="24" scope="col" align="center">QTY</td>
				</tr>
			</thead>
		    <tbody>
				<?php $no = 1;?>
					<?php do { ?>
				<tr class=gradeX>
					<td height="20" align="center" colspan="1"><div valign="justify"><?php echo $no++ ?></div></td>
					<td height="20" align="left" colspan="1"><div valign="justify"><?php echo $row_rs_det['COMPONENT']; ?></div></td>
					<td height="20" align="left" colspan="2"><div valign="justify"><?php echo $row_rs_det['keterangan']; ?></div></td>
					<td height="20" align="left" colspan="4"><div valign="justify"><?php echo $row_rs_det['COMMENT4']; ?></div></td>
					<td height="20" align="center" colspan="1"><div valign="justify"><?php echo $row_rs_det['UNIT']; ?></div></td>
					<td height="20" align="right" colspan="1"><div valign="justify"><?php echo round ($row_rs_det['QTY'],4) ?></div></td>
				</tr>
					<?php } while ($row_rs_det = mssql_fetch_assoc($rs_det)); ?>
			</tbody>
		</table><br>
		<table width="100%" border="1">
			<thead>				
				<tr>
					<td width="96%" height="15" colspan="3" scope="col" align="left">Keterangan :<br>
						<table width="100%" border="0">	
							<?php $no = 1;?>
								<?php do { ?>
							<tr>
								<td height="13" align="left" colspan="1"><div valign="justify"></div></td>
								<td height="13" align="left" colspan="1"><div valign="justify"></div></td>
								<td height="13" align="left" colspan="8"><div valign="justify"></div></td>
							</tr>
							<?php } while ($ngentot = mssql_fetch_assoc($kontol)); ?>
						</table>
					</td>						
				</tr>					
			</thead>
		</table>			
	</form> 