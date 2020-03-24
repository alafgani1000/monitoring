
$(document).ready(function() {
		   var count = 0;
 
            $("#add_btn").click(function(){
                    count += 1;
                $('#containerr').append(
                           '<tr class="records">'
                         + '<td><input id="no_price' + count + '" name="no_price_' + count + '" type="text"></td>'
                         + '<td><select id="dt_awal_'+ count +'" name="dt_awal_'+count+'" type="date"><option>--PILIH PERIODE--</option>"<?php do {?><option style="text-align:center" value="id_bln"> </option>"<select></td>'
                         + '<td><select id="dt_akhir'+ count +'" name="dt_akhir[dt_akhir]'+count+'" type="date"><option>--PILIH PERIODE--</option><?php do {?><option style="text-align:center" value="[id_bln]"><select></td>'
                         + '<td><select id="id_customer'+ count +'" name="id_customer[$Sid_customer]'+count+'" type="text"><option>--CUSTOMER--</option><?php do {?><option style="text-align:center" value="[$id_customer]"><select></td>'
                         + '<td><select id="id_customer'+ count +'" name="id_customer[$Sid_customer]'+count+'" type="text"><option>--CUSTOMER--</option><?php do {?><option style="text-align:center" value="[$id_customer]"><select></td>'
                         + '<td><select id="id_line_'+ count +'" name="id_line_'+count+'" type="text"><option>--LINE--</option><?php do {?><option  value="<?php echo $row_rs_line[id_line]; ?><?php echo $row_rs_line[id_line]; ?>"<select></td>'
                         + '<td><select id="nm_item'+ count +'" name="nm_item[$nm_item]'+count+'" type="text"><option>--ITEM--</option><select></td>'
                         + '<td><select id="nm_item'+ count +'" name="nm_item[$nm_item]'+count+'" type="text"><option>--ITEM--</option><select></td>'
                         + '<td><input id="nama_belakang_' + count + '" name="nama_belakang_' + count + '" style="text-align:center" type="text" required="required" onkeypress="return wajibAngka(event)"></td>'
                         + '<td><input id="nama_belakang_' + count + '" name="nama_belakang_' + count + '" style="text-align:center" type="text" required="required" onkeypress="return wajibAngka(event)" ></td>'
                         + '<td><input id="nama_belakang_' + count + '" name="nama_belakang_' + count + '" style="text-align:center" type="text" disabled="disabled"></td>'
                         + '<td><input id="nama_belakang_' + count + '" name="nama_belakang_' + count + '" type="text"></td>'
                         + '<td><center><a class="remove_item" href="#" >Delete</a></center>'
                         + '<input id="rows_' + count + '" name="rows[]" value="'+ count +'" type="hidden"></td></tr>'
                    );
                });
 
                $(".remove_item").live('click', function (ev) {
                if (ev.type == 'click') {
                $(this).parents(".records").fadeOut();
                        $(this).parents(".records").remove();
            }
            });
        });
