<form method="get" action="">
<label>ID <input type="text" name="PRI_ID"/></label><br>
<label>Product ID <select name="PRO_ID">
<?php foreach($productList as $P) {echo "<option value = $P->PRO_ID>
    $P->PRO_ID</option>";}
    ?>
</select></label><br>
<label>Quantity<input type="text" name="PRI_Qty"/></label><br>
<label>Price<input type="text" name="PRI_Price"/></label><br>
<label>SCEEN<input type="text" name="PRI_SCEEN"/></label><br>
<input type="hidden"name="controller"value="priceproduct"/>
<button type= "submit"name="action"value="index">back</button>
<button type= "submit"name="action"value="addPriceproduct">Save</button>

</form>