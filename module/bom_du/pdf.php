<?php 

ob_start();
include ("../../Connections/accpac/koneksi.php");
mssql_select_db($database_koneksi, $koneksi);
$kontol = mssql_query("SELECT DISTINCT a.ITEMNO,b.[DESC]AS kett,a.BOMNO,b.AUDTDATE,b.AUDTUSER FROM ICBOMH a JOIN ICITEM b on b.ITEMNO=a.ITEMNO 
						WHERE a.ITEMNO = '$_GET[ITEMNO]' and a.BOMNO IN ('R0') and b.INACTIVE IN('0')");
while($kanjut = mssql_fetch_array($kontol)){
	$header .='<table width="97%" border="0" cellspacing="2" cellpadding="1">
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td><div align="right">F-ENG.AP-03/R0</div></td>
					</tr>
					<tr>
						<td width="32%" >PT.YASUNAGA INDONESIA</td>
						<td width="20%">&nbsp;</td>
						<td width="48%" rowspan="7"><div align="center">
							<table width="100%" border="1" cellspacing="2" cellpadding="1">
								<tr>
									<td colspan="6"><div align="center">Date : '.$thn=date('d - M - Y').' </div></td>
								</tr>
								<tr>
									<td width="17%"><div align="center">Dibuat</div></td>
									<td width="17%"><div align="center">Check</div></td>
									<td colspan="4"><div align="center">Approval</div></td>
								</tr>
								<tr>
									<td height="65">&nbsp;</td>
									<td>&nbsp;</td>
									<td width="16%">&nbsp;</td>
									<td width="17%">&nbsp;</td>
									<td width="17%">&nbsp;</td>
									<td width="16%">&nbsp;</td>
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
						<td>ENGINEERING AIR PUMP </td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>  
					<tr>
						<td height="23">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td height="23">&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>Bill Of Material : '.$kanjut['ITEMNO'].' </td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td >'.$kanjut['BOMNO'].' : '.$kanjut['kett'].'</td>
						<td>&nbsp;</td>
					</tr>
				</table>
			';
$isi ='<body>';	
	$header2 .='<table width="100%" border="1">
					<tr>
						<td width="5%" height="24" colspan="1" scope="col" align="center">NO </td>
						<td width="20%" height="24" colspan="1" scope="col" align="center">KODE ACCPAC</td>
						<td width="39%" height="24" colspan="1" scope="col" align="center">KOMPONEN</td>
						<td width="18%" height="24" colspan="1" scope="col" align="center">SUPPLIER</td>
						<td width="7%" height="24" colspan="1" scope="col" align="center">UNIT</td>
						<td width="7%" height="24" colspan="1" scope="col" align="center">QTY</td>
					</tr>
				</table>			
			';
		}
$no=1;	
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mssql_real_escape_string") ? mssql_real_escape_string($theValue) : mssql_real_escape_string($theValue);

  switch ($theType) {
    case "char":
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
$jembut = mssql_query("SELECT DISTINCT
dbo.ICBOMH.ITEMNO,
dbo.ICITEM.[DESC] AS T,
dbo.ICBOMD.COMPONENT,
b.[DESC] AS y,
dbo.ICBOMD.QTY,
dbo.ICBOMD.UNIT,
b.COMMENT4,
dbo.ICBOMD.[LINENO],
b.ITEMNO

FROM
dbo.ICBOMH
INNER JOIN dbo.ICITEM ON dbo.ICBOMH.ITEMNO = dbo.ICITEM.ITEMNO
RIGHT JOIN dbo.ICBOMD ON dbo.ICBOMH.ITEMNO = dbo.ICBOMD.ITEMNO
RIGHT JOIN dbo.ICITEM AS b ON dbo.ICBOMD.COMPONENT = b.ITEMNO
WHERE
dbo.ICBOMD.ITEMNO = '$_GET[ITEMNO]' AND
dbo.ICBOMH.BOMNO IN ('R0') AND
dbo.ICITEM.INACTIVE IN ('0') AND
dbo.ICBOMD.BOMNO IN ('R0')
ORDER BY
dbo.ICBOMD.[LINENO] ASC");
						// print_r($jembut);
						// exit();
while($toket = mssql_fetch_array($jembut)){	
	//$a=$toket['DARRR'];
	//echo json_encode($toket);
	//var_dump($a);
	$isi .='<table width="100%" border="1">	
				<tr>
					<td width="5%" height="13" align="center" colspan="1"><div valign="justify">'.$no.'</div></td>
					<td width="20%" height="13" align="left" colspan="1"><div valign="justify">&nbsp; '.$toket['COMPONENT'].'</div></td>
					<td width="39%" height="13" align="left" colspan="1"><div valign="justify">&nbsp; '.$toket[''].'</div></td>
					<td width="18%" height="13" align="left" colspan="1"><div valign="justify">&nbsp; '.$toket['COMMENT4'].'</div></td>
					<td width="7%" height="13" align="center" colspan="1"><div valign="justify">'.$toket['UNIT'].'</div></td>
					<td width="7%" height="13" align="right" colspan="1"><div valign="justify">'.$toket['QTY'].' &nbsp;</div></td>
				</tr>
			</table>
		';
	$no++ ;
}
$isi .='<br><table width="100%" border="1">
					<tr>
						<td width="96%" height="15" colspan="3" scope="col" align="left">Keterangan :<br>';
							$memek = mssql_query("SELECT DISTINCT dbo.ICIOTH.ITEMDESC,dbo.ICIOTH.COMMENT,dbo.ICIOTH.AUDTUSER,dbo.ICIOTH.ITEMNO
													FROM dbo.ICIOTH
													INNER JOIN dbo.ICITEM ON dbo.ICIOTH.ITEMNO = dbo.ICITEM.ITEMNO
													WHERE dbo.ICIOTH.ITEMNO='$_GET[ITEMNO]'");
								while($cangcut = mssql_fetch_array($memek)){
							$isi .='<table width="100%" border="0">	
									<tr>
										<td width="5%" height="13" align="center" colspan="1"><div valign="justify">'.$no.'</div></td>
										<td width="5%" height="13" align="left" colspan="1"><div valign="justify">&nbsp; '.$cangcut['MANITEMNO'].'</div></td>
										<td width="15%" height="13" align="left" colspan="1"><div valign="justify">&nbsp; '.$cangcut['ITEMDESC'].'</div></td>
										<td width="75%" height="13" align="left" colspan="1"><div valign="justify">'.$cangcut['COMMENT'].'</div></td>
									</tr>
								</table>
								';
							$no++ ;
							}
						$isi .='</td>						
					</tr>					
				</table>			
			';	

			// <tr>
				// <td width="29%" colspan="2">Bag. Produksi </td>
				// <td width="42%">&nbsp;</td>
				// <td width="29%"colspan="2">Bag. Gudang </td>
			// </tr>
			// <tr>
				// <td colspan="2" align="bottom">
				// <br>
				// <br>
				// <br>
				// <br>...........................................................</td>
				// <td>&nbsp;</td>
				// <td colspan="2" align="bottom">
				// <br>
				// <br>
				// <br>
				// <br>...........................................................</td>
			// </tr>
			// <tr>
				// <td width="8%">Nama</td>
				// <td width="20%">:</td>
				// <td width="43%">&nbsp;</td>
				// <td width="8%">Nama</td>
				// <td width="21%">:</td>
			// </tr>
			// <tr>
				// <td>Dept</td>
				// <td>:</td>
				// <td>&nbsp;</td>
				// <td>Dept</td>
				// <td>:</td>
			// </tr>
		// </table>
	// ';
$isi .='</body>';
//=======blok untuk nampilin ke PDF======/
require_once('yasunaga/tcpdf/config/lang/eng.php');
require_once('yasunaga/tcpdf/tcpdf.php');

// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

    //Page header
    public function Header() {
    global $header,$header2;
    //$this->SetFont('Times', 'B', 8);
    //$this->writeHTML(($this->getPage()==1?$header1:''), true, false, true, false, '');
	$this->SetY(5);
    $this->SetFont('Times', 'B', 8);
    $this->writeHTML($header, true, false, true, false, '');
	$this->SetFont('Times', 'B', 8);
    $this->writeHTML($header2, true, false, true, false, '');
    //$this->writeHTML($table_header, true, false, true, false, '');
  }

    // Page footer
    public function Footer() {
        // Position at 15 mm from bottom
        $this->SetY(-15);
        // Set font
        $this->SetFont('times', 'BI', 9);
        // Page number
       // $this->Cell(0, 10, ''.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
	     $this->Cell(0,10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
		 $this->MultiCell(40, 4, "Line 1\nLine 2\nLine 3", 0, 'L', 0, 0);
							}
						}

// create new PDF document
//$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
$pdf = new MYPDF('P', PDF_UNIT,'Letter ', true, 'UTF-8', false);
// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('');
$pdf->SetTitle('');
$pdf->SetSubject('TCPDF');
$pdf->SetKeywords('TCPDF, PDF, example, test, guide');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING, array(0,64,255), array(0,64,128));

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

 //$pdf->setCellPaddings(0,0,0,0);



//set auto page breaks
$PDF_MARGIN_BOTTOM = 35;
$pdf->SetAutoPageBreak(true, $PDF_MARGIN_BOTTOM);
//set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

//set some language-dependent strings
$pdf->setLanguageArray($l);
//$pdf->setCellMargins(0, 23, 0, 0);
//$pdf->setRowMargins(0, 23, 0, 0);
// --------------------Blok Text-------------------------------//
// set font
//$pdf->SetFont('times', '', 9);

//set margins
$pdf->SetMargins(10, 59.5, 0,0);
$PDF_MARGIN_HEADER = 5;
$PDF_MARGIN_FOOTER = 30;
$pdf->SetHeaderMargin($PDF_MARGIN_HEADER);
$pdf->SetFooterMargin($PDF_MARGIN_FOOTER);

// add a page 1
//libxml_use_internal_errors (true);
$pdf->AddPage($isi);
$pdf->SetFont('Times', '', 8);
$pdf->SetXY(10,59.5);

$pdf->writeHTML($isi, true, false, true, false,'');
//============================block kode meminta scrip php hasil===========================================/
$pdf->writeHTML($body, true, false, true, false, '');
//$pdf->writeHTML($bdn, true, false, true, false, '');

// output the HTML content
//$pdf->writeHTML($php2, true, false, true, false, '');

// reset pointer to the last page;
//$pdf->lastPage();
//libxml_use_internal_errors (false);
// ---------------------------------------------------------

//Close and output PDF document
ob_end_clean();
$pdf->Output("'$_GET[ITEMNO]'.pdf", 'I');

//============================================================+
// END OF FILE                                                
//============================================================+
?>