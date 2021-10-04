<?php
if(isset($_GET['controller']) && isset($_GET['action'])) 
{  
     $controller = $_GET['controller'];
    $action = $_GET['action'];

}else

{   
    $controller= 'pages'; 
    $action = 'home';

} ?>
<html>
<style>
.button {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #00cccc;
}

.button1:hover {
  background-color: #00cccc;
  color: white;
}

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}
.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #9933FF;
}

.button3:hover {
  background-color: #9933FF;
  color: white;
}
.button4 {
  background-color: white; 
  color: black; 
  border: 2px solid #FF3333;
}

.button4:hover {
  background-color: #FF3333;
  color: white;
}
.button5 {
  background-color: white; 
  color: black; 
  border: 2px solid #33FF33;
}

.button5:hover {
  background-color: #33FF33;
  color: white;
}
</style>
<head></head>
<body>
<center>
    <br>
    <a class="button button5" href="?controller=pages&action=home">Home</a>
    <a class="button button1" href="?controller=quotation&action=index">Quotation</a>
    <a class="button button3" href="?controller=detailquotation&action=index">DetailQuotation</a>
    <a class="button button2" href="?controller=priceproduct&action=index">Priceproduct</a>
    <a class="button button4" href="http://158.108.207.4/db21">Exit</a>
    <br>
    <?php require_once("./routes.php"); ?>
</center>
</body>
</html>