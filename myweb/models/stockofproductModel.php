<?php
class StockofProduct
{
    public $sid,$name,$color;

    public function __construct($sid,$name,$color)
    {
        $this->sid = $sid;
        $this->name = $name;
        $this->color = $color;
    }

    public static function getAll()
    {
        $stockofproductlist = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM DetailQuotation NATURAL JOIN quotation NATURAL JOIN stockofproduct NATURAL JOIN colour NATURAL JOIN product";
        $result = $conn->query($sql);
        while ($my_row = $result->fetch_assoc()) {
            $sid = $my_row[STOCK_ID];
            $name = $my_row[PRO_Name];
            $color = $my_row[COLOUR_NAME];
            $stockofproductlist[] = new StockofProduct($sid,$name,$color);
        }
        require("connection_close.php");
        return $stockofproductlist;
    }
}