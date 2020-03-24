<?php
if ($_SESSION['MM_UserGroup'] == 'admin'){
echo "<ul> 
			<li><a href=#>====PROD=======</a></li>
			<li><a href=\"?mod=m_matdet\">BOM A/P R0</a></li>
	  </ul>";
	 }
	if ($_SESSION['MM_UserGroup'] == 'adminprod'){
echo "<ul>
		  <li><a href=\"?mod=m_matdet\">BOM A/P R0</a></li>
	 </ul>"; 
	}
	if ($_SESSION['MM_UserGroup'] == 'adminppic'){
echo "<ul>
		  <li><a href=\"?mod=m_matdet\">BOM A/P R0</a></li>
	 </ul>"; 
	}
?>