<form method="get" action="">
<label>DQ_ID <input type="text" name="DQ_ID"/></label><br>

<label>Q_ID <select name="Q_ID">
<?php foreach($Quotation as $Q) {echo "<option value = $Q->Q_ID>
    $Q->Q_ID</option>";}
    ?>
</select></label><br>

<label>ProductID <select name="STOCK_ID">
<?php foreach($StockofProductList as $S){
        echo "<option value = $S->sid>
        $s->name $s->color</option>";}?>
</select></label><br>

<label>DQ_NUMBER<input type="text" name="DQ_NUMBER"/></label><br>
<label>DQ_QTY<input type="text" name="DQ_QTY"/></label><br>
<label>DQ_CUINT<input type="text" name="DQ_CUINT"/></label><br>
<input type="hidden"name="controller"value="detailquotation"/>
<button type= "submit"name="action"value="index">back</button>
<button type= "submit"name="action"value="addDetailQuotation">Save</button>

</form>