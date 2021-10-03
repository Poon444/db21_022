<?php echo "<br> คุณแน่ใจนะว่าคุณจะลบรายละเอียดใบเสนอราคา? <br>
            <br> $detailquotation->Q_ID $detailquotation->DQ_ID <br>"; ?>

<form method="get" action="">

    <input type="hidden" name="controller" value="detailquotation" />
    <input type="hidden" name="DQ_ID" value="<?php echo $detailquotation->DQ_ID; ?>" />
    <button type="submit" name="action" value="index">back</button>
    <button type="submit" name="action" value="delete">delete</button>
    
</form>