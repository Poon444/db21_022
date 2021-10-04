<p style="font-size:50px">ลบใบเสนอราคา</p>
<br>
<?php echo "<br> คุณแน่ใจนะว่าคุณจะลบใบเสนอราคา? <br>
            <br> $quotation->Q_ID $quotation->CUS_NAME <br><br><br>"; ?>

<form method="get" action="">

    <input type="hidden" name="controller" value="quotation" />
    <input type="hidden" name="Q_ID" value="<?php echo $quotation->Q_ID; ?>" />
    <button type="submit" name="action" value="delete">ลบ</button>
    <button type="submit" name="action" value="index">กลับ</button>
   
    

</form>