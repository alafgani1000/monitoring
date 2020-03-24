<?php
if ($_SESSION['MM_UserGroup'] == 'admin'){
echo "<ul>
		  <li><a href=\"?mod=m_shift\">Shift</a></li>
		  <li><a href=\"?mod=m_line\">Line Produksi</a></li>
		  <li><a href=\"?mod=m_subline\">Detail Line</a></li>
		  <li><a href=\"?mod=\"></a></li>
		  <li><a href=\"?mod=\"></a></li>
	  </ul>";
	 }
	if ($_SESSION['MM_UserGroup'] == 'adminprod'){
echo "<ul>
		  <ul>
		  <li><a href=\"?mod=m_shift\">Shift</a></li>
		  <li><a href=\"?mod=m_line\">Line Produksi</a></li>
		  <li><a href=\"?mod=m_subline\">Detail Line</a></li>
		  <li><a href=\"?mod=\"></a></li>
		  <li><a href=\"?mod=\"></a></li>
	 </ul>"; 
	}
		if ($_SESSION['MM_UserGroup'] == 'adminppic'){
echo "<ul>
		  <ul>
		  <li><a href=\"?mod=m_shift\">Shift</a></li>
		  <li><a href=\"?mod=m_line\">Line Produksi</a></li>
		  <li><a href=\"?mod=m_subline\">Detail Line</a></li>
		  <li><a href=\"?mod=\"></a></li>
		  <li><a href=\"?mod=\"></a></li>
	 </ul>"; 
	}
?>