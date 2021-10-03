<form method="get" action="">

<label>ID <input type="text" name="PRI_ID" 
        value=  "<?php echo $PRI->PRI_ID;?>"/></label><br>

<label>Product ID <select name="PRO_ID">
    <?php foreach($productList as $P) {
        echo "<option value = $P->PRO_ID";
        if($P->PRO_ID==$PRI->PRO_ID){echo " selected='selected'";}
         echo ">$P->PRO_ID</option>";}
    ?>
    </select></label><br> 

<label>Quantity<input type="text" name="PRI_Qty"
    value = "<?php echo $PRI->PRI_Qty;?>"/></label><br>

<label>Price<input type="text" name="PRI_Price"
    value = "<?php echo $PRI->PRI_Price;?>"/></label><br>

<label>SCEEN<input type="text" name="PRI_SCEEN"
    value = "<?php echo $PRI->PRI_SCEEN;?>"/></label><br>

    
<input type="hidden"name="controller"value="priceproduct"/>
<input type="hidden" name="oldid" value="<?php echo $PRI->PRI_ID; ?>"/>
<button type= "submit"name="action"value="index">back</button>
<button type= "submit"name="action"value="update">update</button>
</form>