<!DOCTYPE html>
<?php //require_once '../config/koneksi.php'; ?>
<?php //require_once('Connections/koneksi.php'); ?>
<input type="hidden" name="no" id="nomor" value="<?=$_REQUEST['no']?>" />
<html>
<head>
     <!-- TABLE STYLES-->
    <link href="css/dataTables.bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
	<div class="block-header">
      <h1>MATERIAL AIR PUMP</h1>
      <span></span>
    </div>
	<body>
		<div class="col-md-12">						
			<div class="panel panel-primary">
				<div class="panel-body">
                    <div class="table">
                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
							<thead>
								<tr bgcolor="yellow" class=gradeX>
									<th width="5%"><center>No</center></th>
									<th width="5%"><center>No Type</center></th>
									<th width="10%"><center>Nama Type</center></th>
									<th width="5%"><center>Bom No</center></th>
								</tr>
							</thead>
							<tbody>
								<?php
								mssql_connect("192.168.10.5","ivbcro","@Ivbcro");
								mssql_select_db("YIDAT3");
								$kemem="SELECT dbo.ICBOMH.ITEMNO,dbo.ICITEM.[DESC] as kett,dbo.ICBOMH.BOMNO,dbo.ICBOMH.AUDTDATE,dbo.ICITEM.STOCKUNIT,dbo.ICITEM.STOCKITEM,dbo.ICBOMH.AUDTUSER
										FROM dbo.ICBOMH INNER JOIN dbo.ICITEM ON dbo.ICBOMH.ITEMNO = dbo.ICITEM.ITEMNO
										WHERE dbo.ICBOMH.BOMNO in ('R0') AND dbo.ICITEM.CATEGORY LIKE 'F%' AND dbo.ICITEM.CATEGORY LIKE '%CU'
										AND dbo.ICITEM.CNTLACCT NOT LIKE '%OTH' AND dbo.ICBOMH.ITEMNO NOT LIKE ('SP%') and dbo.ICBOMH.ITEMNO NOT LIKE ('825%') and dbo.ICBOMH.ITEMNO NOT LIKE ('821%')
										and dbo.ICBOMH.ITEMNO NOT LIKE ('877%') and dbo.ICBOMH.ITEMNO NOT LIKE ('861%')and dbo.ICBOMH.ITEMNO NOT LIKE ('871%') 
										AND dbo.ICBOMH.BOMNO IN ('R0') AND dbo.ICITEM.INACTIVE IN ('0')";
								$row=mssql_query($kemem);
								$no=1;
								while($dt=mssql_fetch_array($row)){
										echo'
											<tr class=gradeX onClick="ada(\''.$dt['ITEMNO'].'\',\''.$dt['kett'].'\',\''.$dt['BOMNO'].'\')">
												<td align="center">'.$no.'</td>
												<td >'.$dt['ITEMNO'].'</td>
												<td >'.$dt['kett'].'</td>
												<td >'.$dt['BOMNO'].'</td>
											</tr>
										';
										$no++;
									}
								?>
							</tbody>
						</table>
					</div>
				</div>  
            </div>
		</div>
    <script src="js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.dataTables.js"></script>
    <script src="js/dataTables.bootstrap.js"></script>
    <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
   <script type="text/javascript" >
   var no = <?=$_REQUEST['no']?>;
	// alert(no);
	function ada(ITEMNO,kett){ 
		window.opener.document.getElementById('ITEMNO'+no).value = ITEMNO;
		window.opener.document.getElementById('kett'+no).value = kett;	
		window.close();
	}
</script>
</body>
</html>
