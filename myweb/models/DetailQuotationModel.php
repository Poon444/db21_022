<?php
class DetailQuotation
{
    public $Q_ID,$DQ_ID,$DQ_NUMBER,$STOCK_ID,$DQ_QTY,$DQ_CUINT,$PRO_ID,$PRO_Name,$COLOUR_ID,$COLOUR_NAME;

    public function __construct($Q_ID,$DQ_ID,$DQ_NUMBER,$STOCK_ID,$DQ_QTY,$DQ_CUINT,$PRO_ID,$PRO_Name,$COLOUR_ID,$COLOUR_NAME)
    {
        $this->Q_ID = $Q_ID;
        $this->DQ_ID = $DQ_ID;
        $this->DQ_NUMBER = $DQ_NUMBER;
        $this->STOCK_ID = $STOCK_ID;
        $this->DQ_QTY = $DQ_QTY;
        $this->DQ_CUINT = $DQ_CUINT;

        $this->PRO_ID = $PRO_ID;
        $this->PRO_Name = $PRO_Name;
        $this->COLOUR_ID = $COLOUR_ID;
        $this->COLOUR_NAME = $COLOUR_NAME;
    }

    public static function getAll()
    {
        $DetailQuotationList = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM DetailQuotation NATURAL JOIN quotation NATURAL JOIN stockofproduct NATURAL JOIN colour NATURAL JOIN product";
        $result = $conn->query($sql);
        while ($my_row = $result->fetch_assoc()) {
            $Q_ID = $my_row[Q_ID];
            $DQ_ID = $my_row[DQ_ID];
            $DQ_NUMBER = $my_row[DQ_NUMBER];
            $STOCK_ID = $my_row[STOCK_ID];
            $DQ_QTY = $my_row[DQ_QTY];
            $DQ_CUINT = $my_row[DQ_CUINT];

            $PRO_ID = $my_row[PRO_ID];
            $PRO_Name = $my_row[PRO_Name];
            $COLOUR_ID = $my_row[COLOUR_ID];
            $COLOUR_NAME = $my_row[COLOUR_NAME];

            $DetailQuotationList[] = new DetailQuotation($Q_ID,$DQ_ID,$DQ_NUMBER,$STOCK_ID,$DQ_QTY,$DQ_CUINT,$PRO_ID,$PRO_Name,$COLOUR_ID,$COLOUR_NAME);
        }
        require("connection_close.php");
        return $DetailQuotationList;
    }

    public static function search($key)
    {
        $DetailQuotationList = [];
        require("connection_connect.php");
        $sql="SELECT * FROM DetailQuotation NATURAL JOIN quotation NATURAL JOIN stockofproduct NATURAL JOIN colour NATURAL JOIN product WHERE (Q_ID like '%$key%' or DQ_ID like '%$key%' or Pro_Name like '%$key%' or COLOUR_NAME like '%$key%')";
        $result=$conn->query($sql);
        while($my_row=$result->fetch_assoc())
        {
          
            $Q_ID = $my_row[Q_ID];
            $DQ_ID = $my_row[DQ_ID];
            $DQ_NUMBER = $my_row[DQ_NUMBER];
            $STOCK_ID = $my_row[STOCK_ID];
            $DQ_QTY = $my_row[DQ_QTY];
            $DQ_CUINT = $my_row[DQ_CUINT];

            $PRO_ID = $my_row[PRO_ID];
            $PRO_Name = $my_row[PRO_Name];
            $COLOUR_ID = $my_row[COLOUR_ID];
            $COLOUR_NAME = $my_row[COLOUR_NAME];

            $DetailQuotationList[] = new DetailQuotation($Q_ID,$DQ_ID,$DQ_NUMBER,$STOCK_ID,$DQ_QTY,$DQ_CUINT,$PRO_ID,$PRO_Name,$COLOUR_ID,$COLOUR_NAME);
        }
        require("connection_close.php");
        return $DetailQuotationList;
    }

    public static function Add($Q_ID,$DQ_ID,$STOCK_ID,$DQ_NUMBER,$DQ_QTY,$DQ_CUINT)
    { 
       require("connection_connect.php");
       $sql = "INSERT INTO `DetailQuotation` (`Q_ID`, `DQ_ID`, `STOCK_ID`, `DQ_NUMBER`, `DQ_QTY`, `DQ_CUINT`) VALUES ('$Q_ID', '$DQ_ID', '$STOCK_ID', '$DQ_NUMBER', '$DQ_QTY', '$DQ_CUINT')";
       $result = $conn->query($sql);
       require("connection_close.php");
       return  ;
    }
}