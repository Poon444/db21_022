<?php echo "<br> ARE U SURE U WANT TO DO THIS ???????? <br>
            <br> $PRI->PRO_ID $PRI->PRO_Name จำนวน $PRI->PRI_Qty<br>"; ?>

<form method="get" action="">

    <input type="hidden" name="controller" value="priceproduct" />
    <input type="hidden" name="PRI_ID" value="<?php echo $PRI->PRI_ID; ?>" />
    <button type="submit" name="action" value="index">back</button>
    <button type="submit" name="action" value="delete">delete</button>
    

</form>