<form method="get" action="">
<label>รหัส <input type="text" name="Q_ID"/></label><br>
<label>วันที่ <input type="date" name="Q_DATE"/></label><br>
<label>ชื่อลูกค้า <select name="CUS_Name">
    <?php foreach($customerList as $C) {echo "<option value = $C->id>
    $C->name</option>";}
    ?>
    </select></label><br>
<label>ชื่อพนักงาน <select name="EMP_Name">
<?php foreach($employeeList as $E) {echo "<option value = $E->id>
    $E->name</option>";}
    ?>
</select></label><br>
<label>เงื่อนไขชำระ(เครดิต/มัดจำ)<input type="text" name="Q_CDT"/></label><br>
<label>%มัดจำ(กรณีเป็นเครดิตให้ใส่ 0)<input type="text" name="Q_deposit"/></label><br>

<input type="hidden"name="controller"value="quotation"/>
<button type= "submit"name="action"value="index">back</button>
<button type= "submit"name="action"value="addQuotation">Save</button>

</form>