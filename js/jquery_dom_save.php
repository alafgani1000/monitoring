<?php
	if(isset($_POST['submit'])){
      $connection = mysql_connect("localhost","root","") or die(mysql_error());
      mysql_select_db("mtc") or die(mysql_error());
            foreach ($_POST['rows'] as $key => $count ){
					   $no_price = $_POST['no_price'.$count];
					   $dt_awal = $_POST['dt_awal'.$count];
					   $dt_akhir = $_POST['dt_akhir'.$count];
					   $nm_customer = $_POST['nm_customer'.$count];
					   $nm_item = $_POST['nm_item'.$count];
					   $id_line = $_POST['id_line'.$count];
					   $nm_pro = $_POST['nm_pro'.$count];
					   $part_num = $_POST['part_num'.$count];
					   $kd_accpac = $_POST['kd_accpac'.$count];
					   $jumlah = $_POST['jumlah'.$count];
					   $harga_beli = $_POST['harga_beli'.$count];
					   $sub_total = $_POST['sub_total'.$count];
					   $kett = $_POST['kett'.$count];
					   $tgl_entri = $_POST['tgl_entri'.$count];
					   $user_posting = $_POST['user_posting'.$count];
                       $tahun =$_POST ['tahun'.$count];
				
				$query_2 = "INSERT INTO customer (no_price, dt_awal,dt_akhir, nm_customer, nm_item, id_line, nm_pro, 
				 part_num,kd_accpac,jumlah, harga_beli, sub_total, kett, tgl_entri, user_posting,tahun) 
				VALUES ( '$no_price','$dt_awal', '$dt_akhir', '$nm_customer', '$nm_item', '$id_line', '$nm_pro', '$part_num','$kd_accpac','$jumlah', '$harga_beli', '$sub_total','$kett', '$tgl_entri','$user_posting','$tahun')";
 
 
                mysql_query($query_2) or die(mysql_error());
            }
 
            echo "Data Berhasil disimpan <br>";
            echo "<a href=\"?mod=price_list\">Kembali</a>";
 
        mysql_close($connection);
 
    }else{
        header('Location: index.php');
    }
?>