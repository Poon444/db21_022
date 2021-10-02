<table border = 1>
<tr> 
<td>ProductID</td>
<td>ProductName</td>
<td>Quantity</td>
<td>Price</td>
<td>ScreenPrice</td>
<td>Update</td>
<td>Delete</td></tr>

<form method="get"action="">
    <input type="text" name="key">
    <input type="hidden" name="controller" value="priceproduct"/>
    <button type="submit" name="action" value="search">
    Search</button>
</form>    


<?php foreach($priceproductList as $priceproduct)
{
    echo"<tr>
    <td>$priceproduct->PRI_ID</td>
    <td>$priceproduct->PRO_Name</td>
    <td>$priceproduct->PRI_Qty</td>
    <td>$priceproduct->PRI_Price</td>
    <td>$priceproduct->PRI_SCEEN</td>
    <td>Update</td>
    <td>Delete</td>
    </tr>";

}
echo "</table>";
?>