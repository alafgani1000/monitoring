<?php  
$hostname_koneksi = "192.168.10.5";
$database_koneksi = "YIDAT3";
$username_koneksi = "ivbcro";
$password_koneksi = "@Ivbcro";
$koneksi = mssql_pconnect($hostname_koneksi, $username_koneksi, $password_koneksi) or trigger_error(mssql_error(),E_USER_ERROR); 
?>