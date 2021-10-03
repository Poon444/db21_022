<table border = 1>
<tr> 
<td>Q_ID</td>
<td>DQ_ID</td>
<td>DQ_NUMBER</td>
<td>STOCK_ID</td>
<td>DQ_QTY</td>
<td>DQ_CUINT</td>
<td>update</td></tr>

<?php foreach($DetailQuotation_list as $detailquotation)
{
    echo"<tr>
    <td>$detailquotation->Q_ID</td>
    <td>$detailquotation->DQ_ID</td>
    <td>$detailquotation->DQ_NUMBER</td>
    <td>$detailquotation->STOCK_NUMBER</td>
    <td>$detailquotation->DQ_QTY</td>
    <td>$detailquotation->DQ_CUINT</td>
    <td>Update</td>
    <td>Delete</td>
    </tr>";

}
echo "</table>";
?>