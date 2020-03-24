<?php 
if ($_SESSION['MM_UserGroup'] == 'admin'){
echo "
<ul>
  <li><a href=\"?mod=dt_suratjalan\">SURAT JALAN</a></li>
</ul>";
}
if ($_SESSION['MM_UserGroup'] == 'adminppic'){
echo "
<ul>
  <li><a href=\"?mod=dt_suratjalan\">SURAT JALAN</a></li>
</ul>";
}
if ($_SESSION['MM_UserGroup'] == 'adminexim'){
echo "
<ul>
  <li><a href=\"?mod=lap_scrap\">Laporan INVOICE SCRAP</a></li>
</ul>";
}
?>
