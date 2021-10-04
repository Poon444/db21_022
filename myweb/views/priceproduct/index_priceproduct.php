<!DOCTYPE html>
<html>
<head>
<style>
table {
  font-family: 'Arial';
  margin: 25px auto;
  border-collapse: collapse;
  border: 1px solid #eee;
  border-bottom: 2px solid #008CBA;
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
  background: #008CBA;
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
<th>ProductID</th>
<th>ProductName</th>
<th>Quantity</th>
<th>Price</th>
<th>ScreenPrice</th>
<th>Update</th>
<th>Delete</th></tr>

<br /> 
<p>นาย เสฏฐนันท์ เลี่ยมยองใย 6220503368</p>
<br /> 
<img src="https://sv1.picz.in.th/images/2021/10/04/CFehgV.jpg" width="444" height="248" >
<br /> 
<br /> 
Add <a href=?controller=priceproduct&action=newPriceproduct>click</a><br>
<br/>

<form method="get"action="">
    <input type="text" name="key">
    <input type="hidden" name="controller" value="priceproduct"/>
    <button type="submit" name="action" value="search">
    Search</button>
</form>    


<?php foreach($priceproductList as $priceproduct)
{
    echo"<tr>
    <td>$priceproduct->PRO_ID</td>
    <td>$priceproduct->PRO_Name</td>
    <td>$priceproduct->PRI_Qty</td>
    <td>$priceproduct->PRI_Price</td>
    <td>$priceproduct->PRI_SCEEN</td>
    <td><a href=?controller=priceproduct&action=updateForm&PRI_ID=$priceproduct->PRI_ID>update</a></td>
    <td><a href=?controller=priceproduct&action=deleteConfirm&PRI_ID=$priceproduct->PRI_ID>delete</a></td>
    </tr>";

}
echo "</table>";
?>
</body>
</html>