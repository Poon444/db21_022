<form method="get" action="">
<label>DQ_ID <input type="text" name="DQ_ID" 
        value="<?php echo $detailquotation->DQ_ID;?>"/></label><br>

        <label>Q_ID <select name="Q_ID">
    <?php foreach($quotation as $q) {
        echo "<option value = $q->Q_ID";
        if($q->Q_ID==$detailquotation->Q_ID){echo " selected='selected'";}
         echo ">$q->Q_ID</option>";}
    ?>
    </select></label><br> 

    <label>Product_ID <select name="STOCK_ID">
    <?php foreach($StockofProductList as $s) {
        echo "<option value = $s->sid";
        if($s->sid==$detailquotation->STOCK_ID){echo " selected='selected'";}
         echo ">$s->name $s->color</option>";}
    ?>
    </select></label><br> 

<label>DQ_NUMBER <input type="text" name="DQ_NUMBER" 
        value="<?php echo $detailquotation->DQ_NUMBER;?>"/></label><br>

<label>DQ_QTY <input type="text" name="DQ_QTY" 
        value="<?php echo $detailquotation->DQ_QTY;?>"/></label><br>

<label>DQ_CUINT <input type="text" name="DQ_CUINT"
        value="<?php echo $detailquotation->DQ_CUINT;?>"/></label><br>


<input type="hidden"name="controller"value="detailquotation"/>
<input type="hidden" name="oldid" value="<?php echo $detailquotation->DQ_ID; ?>"/>
<button type= "submit"name="action"value="index">back</button>
<button type= "submit"name="action"value="update">update</button>

</form>