<table border = 1>
<tr>
<td>เลขที่ใบเสนอราคา</td>
<td>วันที่</td>
<td>ลูกค้า</td>
<td>พนักงาน</td>
<td>ที่อยู่ลูกค้า</td>
<td>เบอร์โทร</td>
</tr>
<p>ใบเสนอราคา</p>
new quotation <a href=?controller=quotation&action=newQuotation>click</a><br>
<?php foreach($quotationList as $quotation){
    echo "<tr> 
    <td>$quotation->Q_ID</td>
    <td>$quotation->Q_DATE</td> 
    <td>$quotation->CUS_NAME</td>
    <td>$quotation->EMP_NAME</td> 
    <td>$quotation->CUS_Add</td>
    <td>$quotation->CUS_Tel</td> 
    <td> update</td>
    <td> delete</td> </tr>"; }
echo "</table>";
?>