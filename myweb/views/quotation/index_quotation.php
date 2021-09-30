<table border = 1>
<tr>
<td>ID</td>
<td>Date</td>
<td>update</td>
<td>delete</td>
</tr>
<p>Hi</p>
<?php foreach($quotationList as $quotation){
    echo "<tr> 
    <td>$quotation->Q_ID</td>
    <td>$quotation->Q_DATE</td> 

    <td> update</td>
    <td> delete</td> </tr>"; }
echo "</table>";
?>