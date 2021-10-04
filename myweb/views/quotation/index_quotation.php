<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: 'Arial';
  margin: 25px auto;
  border-collapse: collapse;
  border: 1px solid #eee;
  border-bottom: 2px solid #00cccc;
  box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1), 0px 10px 20px rgba(0, 0, 0, 0.05), 0px 20px 20px rgba(0, 0, 0, 0.05), 0px 30px 20px rgba(0, 0, 0, 0.05);
}
table tr:hover {
  background: #f4f4f4;
}
table tr:hover td {
  color: #000;
}
table th, table td {
  color: #555;
  border: 1px solid #eee;
  padding: 12px 35px;
  border-collapse: collapse;
}
table th {
  background: #00cccc;
  color: #fff;
  text-transform: uppercase;
}
table th.last {
  border-right: none;
}
</style>
</head>
<body>

<table border = 1>
<tr>
<th>เลขที่ใบเสนอราคา</th>
<th>วันที่</th>
<th>ลูกค้า</th>
<th>พนักงาน</th>
<th>ที่อยู่ลูกค้า</th>
<th>เบอร์โทร</th>
<th>เงื่อนไขชำระ</th>
<th>update</th>
<th>delete</th>
</tr>
<p>จัดทำโดย นางสาวกมลชนก ศรีหา รหัสนิสิต 6220503163</p>
<p style="font-size:50px">ยินดีต้อนรับสู่ใบเสนอราคา!</p>
เพิ่มใบเสนอราคา <a href=?controller=quotation&action=newQuotation>CLICK</a><br>
<br /> 
<form method="get" action="">
        <input type="text" name="key">
        <input type="hidden" name="controller" value="quotation">
        <button type="submit" name="action" value="search">
search</button>
<br /> 
</form>
<?php foreach($quotationList as $quotation){
    echo "<tr> 
    <td>$quotation->Q_ID</td>
    <td>$quotation->Q_DATE</td> 
    <td>$quotation->CUS_NAME</td>
    <td>$quotation->EMP_NAME</td> 
    <td>$quotation->CUS_Add</td>
    <td>$quotation->CUS_Tel</td> 
    <td>$quotation->Q_CDT</td> 
    <td><a href=?controller=quotation&action=updateForm&Q_ID=$quotation->Q_ID>UPDATE</a></td>
    <td><a href=?controller=quotation&action=deleteConfirm&Q_ID=$quotation->Q_ID>DELETE</a></td>
    </tr>"; 
}
echo "</table>";
?>

</body>
</html>