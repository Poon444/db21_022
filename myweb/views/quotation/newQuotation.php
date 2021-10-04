<form method="get" action="">
<p style="font-size:50px">เพิ่มใบเสนอราคา</p>
<br>
<label>เลขที่ใบเสนอราคา <input type="text" name="Q_ID"/></label><br><br><br>
<label>วันที่ <input type="date" name="Q_DATE"/></label><br><br><br>
<label>ชื่อลูกค้า <select name="CUS_Name">
    <?php foreach($customerList as $C) {echo "<option value = $C->id>
    $C->name</option>";}
    ?>
    </select></label><br><br><br>
<label>ชื่อพนักงาน <select name="EMP_Name">
<?php foreach($employeeList as $E) {echo "<option value = $E->id>
    $E->name</option>";}
    ?>
</select></label><br><br><br>
<label>เงื่อนไขชำระ(เครดิต/มัดจำ)<input type="text" name="Q_CDT"/></label><br><br><br>
<label>%มัดจำ(กรณีเป็นเครดิตให้ใส่ 0)<input type="text" name="Q_deposit"/></label><br><br><br>

<input type="hidden"name="controller"value="quotation"/>
<button type= "submit"name="action"value="addQuotation">เพิ่ม</button>
<button type= "submit"name="action"value="index">กลับ</button>

</form>