<?php
class Customer
{
    public $id,$name;

    public function __construct($id,$name)
    {
        $this->id = $id;
        $this->name = $name;
    }

    public static function getAll()
    {
        $customerList = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM customer";
        $result = $conn->query($sql);
        while ($my_row = $result->fetch_assoc()) {
            $cus_id = $my_row[CUS_ID];
            $cus_name = $my_row[CUS_Name];
            $customerList[] = new Customer($cus_id,$cus_name);
        }
        require("connection_close.php");
        return $customerList;
    }
}