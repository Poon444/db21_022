<table border = 1>
<tr> <td>Product ID</td>
<td>Product Name</td>
<td>Quantity</td>
<td>Price</td>
<td>ScreenPrice</td>
<td>Update</td>
<td>Delete</td></tr>
<p>hi</p>
<?php foreach($priceproduct_list as $priceproduct)
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