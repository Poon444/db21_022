<?php echo "<br> คุณแน่ในนะว่าคุณจะลบ? <br>
            <br> $quotaion->Q_ID $quotaion->CUS_Name <br>"; ?>

<form method="get" action="">

    <input type="hidden" name="controller" value="quotaion" />
    <input type="hidden" name="Q_ID" value="<?php echo $quotaion->Q_ID; ?>" />
    <button type="submit" name="action" value="index">Back</button>
    <button type="submit" name="action" value="delete">delete</button>
    

</form>