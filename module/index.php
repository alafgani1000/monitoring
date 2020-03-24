<?php
if ($_SESSION['MM_UserGroup'] == 'admin'){
include "home.php";
}
if ($_SESSION['MM_UserGroup'] == 'adminprod'){
include "home.php";
}
if ($_SESSION['MM_UserGroup'] == 'adminppic'){
include "homeppic.php";
}
if ($_SESSION['MM_UserGroup'] == 'admineng'){
include "homeeng.php";
}
else{
	include"homemarketing.php";
}
?>