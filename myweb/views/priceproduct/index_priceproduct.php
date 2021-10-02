<table border = 1>
<tr> 
<td>ProductID</td>
<td>ProductName</td>
<td>Quantity</td>
<td>Price</td>
<td>ScreenPrice</td>
<td>Update</td>
<td>Delete</td></tr>
<p>hi</p>
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