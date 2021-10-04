<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: 'Arial';
  margin: 25px auto;
  border-collapse: collapse;
  border: 1px solid #eee;
  border-bottom: 2px solid #9933FF;
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
  background: #9933FF;
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
<th>Q_ID</th>
<th>DQ_ID</th>
<th>DQ_NUMBER</th>
<th>PRO_NAME</th>
<th>PRO_COLOUR</th>
<th>DQ_QTY</th>
<th>DQ_CUINT</th>
<th>update</th>
<th>delete</th>
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
    <td><a href=?controller=detailquotation&action=deleteConfirm&DQ_ID=$detailquotation->DQ_ID>delete</a></td>
    </tr>";

}
echo "</table>";
?>
</body>
</html>