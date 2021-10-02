<?php
class Priceproduct
{
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
        $this->PRI_Qty =$PRI_Qty;
        $this->PRI_Price = $PRI_Price;
        $this->PRI_SCEEN = $PRI_SCEEN;
        $this->PRO_Name = $PRO_Name;
    }

    public static function getAll()
    {
        echo "hi";
        $priceproductList = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM priceproduct NATURAL JOIN product";
        $result= $conn->query($sql);
        while($my_row = $result->fetch_assoc())
        {
            $PRI_ID = $my_row[PRI_ID];
            $PRO_ID = $my_row[PRO_ID];
            $PRI_Qty = $my_row[PRI_Qty];
            $PRI_Price = $my_row[PRI_Price];
            $PRI_SCEEN = $my_row[PRI_SCEEN];
            $PRO_Name = $my_row[PRO_Name];
            $priceproductList[]= new Priceproduct($PRI_ID,$PRO_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN,$PRO_Name);
            
        }

        require("connection_close.php");

        return $priceproductList;
    }


    
} 