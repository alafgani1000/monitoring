<?php 
if ($_SESSION['MM_UserGroup'] == 'admin'){

echo "
<ul>
  <li><a href=\"?mod=m_plan\">DATA PLANNING PRODUKSI</a></li>
  <li><a href=\"?mod=transaksi_ap\">DATA MONITORING</a></li>
  <li><a href=\"?mod=dt_coil\">REKAP DATA</a></li>
</ul>";
}
	if ($_SESSION['MM_UserGroup'] == 'adminprod'){
echo "
<ul>
  <li><a href=\"?mod=m_plan\">DATA PLANNING PRODUKSI</a></li>
  <li><a href=\"?mod=transaksi_ap\">DATA MONITORING</a></li>
  <li><a href=\"?mod=dt_coil\">REKAP DATA</a></li>
</ul>";
}
	if ($_SESSION['MM_UserGroup'] == 'adminppic'){
echo "
<ul>
  <li><a href=\"?mod=m_plan\">DATA PLANNING PRODUKSI</a></li>
  <li><a href=\"?mod=transaksi_ap\">DATA MONITORING</a></li>
  <li><a href=\"?mod=dt_coil\">REKAP DATA</a></li>
</ul>";
}
?>
