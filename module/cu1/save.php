<?php require_once('../../Connections/koneksi.php'); ?>
<?	
		//if($_POST['act']=='new'){
		mysql_query("insert into plan_req set 
					no_plan			='".$_POST['no_plan']."', 
					plan_date		='".$_POST['plan_date']."',
					nm_plan			='".$_POST['nm_plan']."',
					line_ap			='".$_POST['line_ap']."',
					bln_plan		='".$_POST['bln_plan']."',
					tahun_plan		='".$_POST['tahun_plan']."',
					status			='".$_POST['status']."',
					user_posting	='".$_POST['user_posting']."'");
					
		for ($i=1;$i<=$_POST['jum'];$i++){
			//if(trim($_POST['no_price'.$i])!=''){
				mysql_query("insert into plan_dtl set  
					no_plan		    ='".$_POST['no_plan'.$i]."', 
					itemno			='".$_POST['itemno'.$i]."', 
					type_pro		='".$_POST['type_pro'.$i]."', 
					plant_date		='".$_POST['plant_date'.$i]."', 
					qty_plan		='".$_POST['qty_plan'.$i]."',  
					statusid		='".$_POST['statusid'.$i]."',  
					id_bulan		='".$_POST['id_bulan'.$i]."',  
					tahun			='".$_POST['tahun'.$i]."',
					tgl_bln			='".$_POST['tgl_bln'.$i]."'");
			//}
		}
	
	if(mysql_query){
	 echo var_dump($_POST);
	 echo"<script language='JavaScript'>alert('Data yang anda input berhasil disimpan'); document.location='../../index.php?mod=cu1'</script>";
	}else{
		echo '<b>Error</b>: <br /> '.$sql.'';
	}
?>