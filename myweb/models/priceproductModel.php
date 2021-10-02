<?php
class priceproduct{
    public $PRI_ID;
    public $PRO_ID;
    public $PRI_Qty;
    public $PRI_Price;
    public $PRI_SCEEN;
    public $PRO_Name;


    public function __construct($PRI_ID,$PRO_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN,$PRO_Name)
    {
        $this->PRI_ID = $PRI_ID;
        $this->PRO_ID = $PRO_ID;
        $this->PRI_Qty = $PRI_Qty;
        $this->PRI_Price= $PRI_Price;
        $this->PRI_SCEEN= $PRI_SCEEN;
        $this->PRO_Name= $PRO_Name;
    }
    public static function get($id)
    {
        requite("connection_connect.php");
        $sql = "SELECT * FROM priceproduct NATURAL JOIN product";
        $result = $conn->query($sql);
        $my_row = $result->fetch_assoc();
        $PRI_ID=$my_row[PRI_ID];
        $PRO_ID=$my_row[PRO_ID];
        $PRI_Qty=$my_row[PRI_Qty];
        $PRI_Price=$my_row[PRI_Price];
        $PRI_SCEEN=$my_row[PRI_SCEEN];
        $PRO_Name=$my_row[PRO_Name];
        require("connection_close.php");

        return new priceproduct($PRI_ID,$PRO_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN,$PRO_Name);
    }

    public static function getAll()
    {
        $priceproductList = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM priceproduct NATURAL JOIN product";
        $result = $conn->query($sql);
        while($my_row = $result->fetch_assoc())
        {
            $PRI_ID=$my_row[PRI_ID];
            $PRO_ID=$my_row[PRO_ID];
            $PRI_Qty=$my_row[PRI_Qty];
            $PRI_Price=$my_row[PRI_Price];
            $PRI_SCEEN=$my_row[PRI_SCEEN];
            $PRO_Name=$my_row[PRO_Name];
            $priceproductList[] = new priceproduct($PRI_ID,$PRO_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN,$PRO_Name);
        }
        require("connection_close.php");
        
        return $priceproductList;
    }

    public static function search($key)
    {
        require("connection_connect.php");
        $sql = "SELECT * FROM priceproduct NATURAL JOIN product where (PRI_ID like'%key%' or PRO_ID like'%key%' or PRO_Name like '%key%') and PRO_ID = PRO_ID";
        $result = $conn->query($sql);
        while($my_row = $result->fetch_assoc())
        {
            $PRI_ID=$my_row[PRI_ID];
            $PRO_ID=$my_row[PRO_ID];
            $PRI_Qty=$my_row[PRI_Qty];
            $PRI_Price=$my_row[PRI_Price];
            $PRI_SCEEN=$my_row[PRI_SCEEN];
            $PRO_Name=$my_row[PRO_Name];
            $priceproductList[] = new priceproduct($PRI_ID,$PRO_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN,$PRO_Name);
        }
       
        require("connection_close.php");
        return $priceproductList;
    }
    public static function add($PRO_ID,$PRI_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN)
    {
        require("connection_connect.php");
        $sql = "INSERT INTO priceproduct(PRO_ID,PRI_ID,PRI_Qty,PRI_Price,PRI_SCEEN) VALUES ('$PRO_ID','$PRI_ID','$PRI_Qty','$PRI_Price','$PRI_SCEEN')";
        $result = $conn->query($sql);
        require("connection_close.php");
        return "Add success $result rows";
    }

    public static function update($PRI_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN)
    {
        require("connection_connect.php");
        $sql = "UPDATE priceproduct SET PRI_ID = '$PRI_ID', PRI_Qty = '$PRI_Qty', PRI_Price = '$PRI_Price',PRI_SCEEN = '$PRI_SCEEN' WHERE PRI_ID = '$PRI_ID'";
        $result = $conn->query($sql);
        require("connection_close.php");
        return "Update success $result rows";
    }
    
    public static function delet($PRI_ID)
    {
        require_once("connection_connect.php");
        $sql = "DELETE FROM priceproduct WHERE PRI_ID = '$PRI_ID'";
        $result = $conn->query($sql);
        require("connection_close.php");
        return "Delete success $result rows";

    }
}