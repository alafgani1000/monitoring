<?php require_once('Connections/koneksi.php'); ?>
<? include"header.php"; ?>
	<div class="x_content">
		<?
			if($_REQUEST['act']=='edit'){
				$act = 'edit';
				$dt=mysql_fetch_array(mysql_query("select * from plan_req where no_plan='".$_REQUEST['no_plan']."'"));
				$no_plan = $dt['no_plan'];
				$dek = mysql_num_rows(mysql_query("select * from plan_dtl where no_plan='".$dt['no_plan']."'"));
				// echo $cek;
				if($dek>0){
					$jum=$dek;
				}
				// echo $jum;
			}else{
				$act = 'new';
				// membaca kode otomatis
				$query = "SELECT max(no_plan) as maxPlan FROM plan_req";
				$plant = mysql_query($query);
				$data  = mysql_fetch_array($plant);
				$kode= $data['maxPlan'];
				$noUrut = (int) substr($kode, 4, 8);
				$noUrut++;
				$plan =sprintf("%04s", $noUrut).sprintf("/PPIC").date('/m/y');
				$jum = 0;
			}
		?>
		<script>
			function tes(){	
			// var duty = $ ("#duty").val();	
			//$("#stamp").val(duty);
			var pln_id=$("#pln_id").val();
			$("#inv_no").val(pln_id);
			var statusid=$("#statusid").val();
			$("#status").val(statusid);
		}
		
		$(document).ready(function() {
				var count = <?=$jum?>;				
				$("#add_btn").click(function(){
					count += 1;
					var invoice=$("#pln_id").val();						
					var thn=$("#tahunid").val();
					var bulan=$("#bln_plan").val();
					var idstatus=$("#statusid").val();
					$('#containerr').append(
						'<tr align="center" class="records">'
						+ '<td width="2%" ><div style="text-align:center" id="'+count+'">'+count+'</div></td>'
						+ '<td width="10%" ><input value="'+invoice+'" id="pln_id' + count + '" name="no_plan'+count+'" style="text-align:center" type="text" readonly="readonly" /></td>'
						+ '<td>&nbsp;&nbsp;&nbsp;&nbsp;<img src="img/search.png" width="20" height="20" onclick="showtype('+count+')" readonly="readonly" /></td>'
						+ '<td width="25%"><input style="text-align:center" type="text" name="itemno'+count+'" id="ITEMNO'+count+'" size="10" readonly="readonly"/></td>'
						+ '<td><input style="text-align:center" type="text" name="type_pro'+count+'" id="kett'+count+'" size="15" readonly="readonly"/></td>'
						+ '<td><input class="datepicker" id="tgln'+count+'" name="plant_date'+count+'" type="text" onchange="kontol('+count+')" onblur="kontol('+count+')" onkeyup="kontol('+count+')" /></td>'
						+ '<td><input style="text-align:center" type="text" name="qty_plan'+count+'" id="'+count+'" onkeypress="return wajibAngka(event)" size="15" /></td>'																		
						+ '<td width="20%"><input style="text-align:center" type="text" value="'+idstatus+'" name="statusid'+count+'" id="statusid"  size="15" /></td>'
						+ '<td><a class="remove_item" href="#" ><center><img src="img/remove.png" width="15" height="15" /></center></a><input id="rows_'+count+'" name="rows[]" value="'+ count +'" type="hidden"></td>'
						+ '<td><input id="tgl_entri' + count + '" name="tahun' + count + '" value="'+thn+'" type="text" ></td>'
						+ '<td><input id="bln_plan' + count + '" name="id_bulan' + count + '" value="'+bulan+'" type="text" ></td>'
						+ '<td><input id="" name="tgl_bln' + count + '" type="text" onkeyup="kontol('+count+')" ></td>'
						 + '</tr>'
					);
					$( ".datepicker" ).datepicker(
						{
							dateFormat      : "yy-mm-dd" 
						}
					);
					$('#jum').val(count);
				});

					// alert('a');
				$(".remove_item").live('click', function (ev) {
					if (ev.type == 'click') {
						$(this).parents(".records").fadeOut();
						$(this).parents(".records").remove();
						count -= 1;
						$('#jum').val(count);
					}
				});
			});
			function showtype(no) {
						// alert(no);
						window.open("module/CU1/poptype.php?no="+no+"", "list", "width=1080,height=640");
				}			
		</script>
		<div class="block-border">
			<div class="block-header">
				<h1>INSERT DATA PLAN PPIC</h1>
				<span></span> 
			</div>
			<form id="id_form" class="block-content form" method="POST" action="module/CU1/save.php">
				<fieldset>
					<legend><b>PLANNING FINISH GOOD</b></legend>
					<table width="100%" id="dataTable"  border="0" cellpadding="2">
						<tr>							
							<td width="25%">
								<div class="_75">
									<p>
										<label for="no_inv">NO PLAN</label>
										<input id="pln_id" style="text-align:center" name="no_plan" value="<?=$plan?>" class="required" type="text"/> 
									</p>
								</div>								
							</td>							
							<td width="25%">
								<div class="_50">
									<p>
										<label for="req_date">DATE REQUEST * </label>
										<input name="plan_date" value="<?php echo date('Y-m-d'); ?>" style="text-align:center" class="required" type="text" />
									</p>
								</div >								
							</td>
							<td width="25%">
								<div class="_75">
									<p>
										<label for="nm_plan">POST NAME</label>
										<input  style="text-align:center" name="nm_plan" class="required" type="text"/>
									</p>
								</div>								
							</td>
								<td width="18%">
									<div>
										<label for="textarea">Line Produksi</label>
										<select name="line_ap" id="line_ap">										
											<?php
												mysql_connect("localhost","root","");
												mysql_select_db("monitoring");
												$line = mysql_query("select * from m_line order by id_line");
												echo'<option value="" > -- Pilih Line -- </option>';
												while ($ln=mysql_fetch_array($line)){
													echo '<option value="'.$ln['line'].'"';
													if ($ln['id_line']==$dt['line_ap']){ echo ' selected '; };
													echo '>'.$ln['line'].'</option>';
												}
											?>
										</select>
									</div>	
								</td>
							</td>
						</tr>
						<tr>
							<td width="25%">
								<div>
									<label for="textarea">Bulan Produksi</label>
									<select name="bln_plan" id="bln_plan">										
										<?php
											mysql_connect("localhost","root","");
												mysql_select_db("monitoring");
											$bulan = mysql_query("select * from m_bulan order by id_bln");
											echo'<option value="" > -- Pilih Bulan -- </option>';
											while ($bln=mysql_fetch_array($bulan)){
												echo '<option value="'.$bln['bulan'].'"';
												if ($bln['id_bln']==$dt['bln_plan']){ echo ' selected '; };
												echo '>'.$bln['bulan'].'</option>';
											}
										?>
									</select>
								</div>		
							</td>
							<td width="25%" colspan="1">
								<div class="_50">
									<p>
										<label for="tahun_plan">Tahun PLAN</label>
										<input name="tahun_plan" type="text" id="tahunid" value="<?php echo  date("Y");?>" style="text-align:center" readonly="readonly" />
									</p>
								</div>								
							</td>
							<td>
								<label for="status">Status</label>
								<select id="statusid" name="status">
								  <option >Pilih Status</option>
								  <option value="Plan">Plan</option>
								  <option value="Actual">Actual</option>
								</select>
							</td>
							
						</tr>
					</table>			
				</fieldset>
				<fieldset>
					<legend><b>PLANNING FINISH GOOD</b></legend>
					<table width="100%" id="dataTable"  border="0" cellpadding="2">
						<tr>
							<td width="25%">
								<div class="_25">
									<p>
										<button class="button-flat-outline" form="" name="add_btn"  id="add_btn"><b>Tambah Product</b></button>
									</p>
								</div>
								<div class="_15">
									<input type="hidden" name="jum" id="jum" value="<?=$jum?>">
								</div>
								<table id="dataTable" class="table" cellpadding="0" cellspacing="0" border="1">								
									<tr>
										<td><center><label for="no_invoice">NO</label></center></td>
										<td><center><label for="no_invoice">NO PLAN</label></center></td>
										<td><center><label for="nm_dept" >SEARCH</label></center></td>
										<td><center><label for="id_line" ><span id="spryselect1">NO ITEM</span></label></center></td>
										<td><center><label for="id_line" ><span id="spryselect1">TYPE PRODUCT</span></label></center></td>
										<td><center><label for="part_num">TANGGAL</label></center></td>
										<td><center><label for="part_num">QTY</label></center></td>
										<td><center><label for="kd_accp">STATUS</label></center></td>
										<td colspan="7"><center><label for="act">ACTION</label></center></td>
									</tr>
									<tbody id="containerr">	
									<!-- ================================= Insert Edit Data Disini=========================================-->
									<!-- ================================= Insert Edit Data Disini=========================================-->
									</tbody >
									<tr>
										<td colspan="24" ><input type="hidden" name="act" value="<?=$act?>" />
											
										</td>
									</tr>
								</table>
																
							</td>
						</tr>
						<tr>
							<td colspan="24" ><input type="hidden" name="act" value="<?=$act?>" />								
								<table >
									<tr>
										<td width="10%" colspan="6">
											<a class="button red"  href="?mod=dt_matassy">BACK</a>
										</td>
										<td width="180%" colspan="6">
											<!--<input type="hidden" name="tgl_entri" id="tgl_entry" value="<?//=date('Y-m-d')?>" />-->
												<input type="hidden" name="user_posting" id="user_posting" value="<?php echo $_SESSION['MM_Username']; ?>" />
										</td>
										<td width="10%" >
											<input type="submit" class="button" name=simpan value="Save" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</fieldset>
			</form>
		</div>
	<script type="text/javascript">
		var sprytextfield1 = new Spry.Widget.ValidationTextField("sprytextfield1");
		var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1");
		var spryselect2 = new Spry.Widget.ValidationSelect("spryselect2");
		 function wajibAngka(evt) {
			 var charCode = (evt.which) ? evt.which : event.keyCode
			 if (charCode > 31 && (charCode < 48 || charCode > 57))
			 return false;
		 } 
		 	
	function kontol(no){
		 var d = new Date ($("#tgln"+no).val());
		 
		var n = d.getDate()
		$("[name=tgl_bln"+no+"]").val(n);
		 //alert(n);
	}
	
	</script>
	