<table border = 1>
<tr> 
<td>Q_ID</td>
<td>DQ_ID</td>
<td>DQ_NUMBER</td>
<td>PRO_NAME</td>
<td>PRO_COLOUR</td>
<td>DQ_QTY</td>
<td>DQ_CUINT</td>
<td>update</td>
<td>delete</td>
</tr>
<br /> 
<p>นครินทร์ คชสีห์ 6220503279</p>
เพิ่มรายละเอียดสินค้า <a href=?controller=detailquotation&action=newDetailQuotation>click</a><br>
<br /> 
<br /> 
<form method="get" action="">
        <input type="text" name="key">
        <input type="hidden" name="controller" value="detailquotation">
        <button type="submit" name="action" value="search">
search</button>
<br /> 
</form>
<?php foreach($DetailQuotation_list as $detailquotation)
{
    echo"<tr>
    <td>$detailquotation->Q_ID</td>
    <td>$detailquotation->DQ_ID</td>
    <td>$detailquotation->DQ_NUMBER</td>
    <td>$detailquotation->PRO_Name</td>
    <td>$detailquotation->COLOUR_NAME</td>
    <td>$detailquotation->DQ_QTY</td>
    <td>$detailquotation->DQ_CUINT</td>
    <td><a href=?controller=detailquotation&action=updateForm&DQ_ID=$detailquotation->DQ_ID>update</a></td>
    <td>Delete</td>
    </tr>";

}
echo "</table>";
?>