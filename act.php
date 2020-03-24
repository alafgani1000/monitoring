<?php
error_reporting(0);
$md = addslashes(strip_tags($_GET['mod']));
$act = addslashes(strip_tags($_GET['act']));

$fdname = 'module/'.$md;
if (file_exists($fdname)) {

$mod = "module/".$md;
switch ((isset($act) ?  $act : ''))
{
	case 'tgl_sj':
	include("$mod/tgl_sj.php");
    break;
	
	case 'tgl_fin1':
	include("$mod/tgl_fin1.php");
    break;
	
	case 'tgl_fin2':
	include("$mod/tgl_fin2.php");
    break;
	
	case 'add':
	include("$mod/add.php");
    break;
	
	case 'TMMIN':
	include("$mod/TMMIN.php");
    break;
	
	case 'tes':
	include("$mod/coba.php");
    break;

	case 'edit':
	include("$mod/edit.php");
	break;
	
	case 'editpart':
	include("$mod/editpart.php");
	break;

	case 'delete':
	include("$mod/delete.php");
    break;
	
	case 'delupload':
	include("$mod/delupload.php");
    break;
	
	case 'pdf':
	include("$mod/pdf.php");
    break;
	
	case 'excel':
	include("$mod/excel.php");
    break;

	case 'copy':
	include("$mod/copy.php");
    break;

	case 'detail':
	include("$mod/detail.php");
    break;
	
	case 'editdetail':
	include("$mod/editdetail.php");
    break;
	
	case 'reply':
	include("$mod/reply.php");
    break;
	
	case 'status':
	include("$mod/status.php");
    break;
	
	case 'out':
	include("$mod/out.php");
    break;
	
	case 'in':
	include("$mod/login.php");
    break;
	
	case 'data':
	include("$mod/table.php");
    break;
	
	case 'cek_pengaduan':
	include("$mod/cek_pengaduan.php");
    break;
	
	case 'editinv':
	include("$mod/editinv.php");
    break;
	
	case 'editpack':
	include("$mod/editpack.php");
    break;
	
	case 'cek':
	include("$mod/cek.php");
    break;
	
	case 'update':
	include("$mod/update.php");
    break;
	
	case 'ubah_password':
	include("$mod/ubah_password.php");
    break;

	default: 
    include ("$mod/index.php");
}

}else{
    include ("module/404/index.php");
}
?>
        