<?php
class DetailQuotation
{
    public $Q_ID,$DQ_ID,$DQ_NUMBER,$STOCK_ID,$DQ_QTY,$DQ_CUINT;

    public function __construct($Q_ID,$DQ_ID,$DQ_NUMBER,$STOCK_ID,$DQ_QTY,$DQ_CUINT)
    {
        $this->Q_ID = $Q_ID;
        $this->DQ_ID = $DQ_ID;
        $this->DQ_NUMBER = $DQ_NUMBER;
        $this->STOCK_ID = $STOCK_ID;
        $this->DQ_QTY = $DQ_QTY;
        $this->DQ_CUINT = $DQ_CUINT;
    }

    public static function getAll()
    {
        $DetailQuotationList = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM DetailQuotation NATURAL JOIN quotation NATURAL JOIN stockofproduct";
        $result = $conn->query($sql);
        while ($my_row = $result->fetch_assoc()) {
            $Q_ID = $my_row[Q_ID];
            $DQ_ID = $my_row[DQ_ID];
            $DQ_NUMBER = $my_row[DQ_NUMBER];
            $STOCK_ID = $my_row[STOCK_ID];
            $DQ_QTY = $my_row[DQ_QTY];
            $DQ_CUINT = $my_row[DQ_CUINT];

            $DetailQuotationList[] = new DetailQuotation($Q_ID,$DQ_ID,$DQ_NUMBER,$STOCK_ID,$DQ_QTY,$DQ_CUINT);
        }
        require("connection_close.php");
        return $DetailQuotationList;
    }
}