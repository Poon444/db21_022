<?php
class product
{
    public $PRO_ID;

    public function __construct($PRO_ID)
    {
        $this->PRO_ID= $PRO_ID;
    }

    public static function getAll()
    {
        $productList = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM product";
        $result = $conn->query($sql);
        while ($my_row = $result->fetch_assoc()) {
            $PRO_ID = $my_row[PRO_ID];
            $productList[] = new product($PRO_ID);
        }
        require("connection_close.php");
        return $productList;
    }
}