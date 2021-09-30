<?php
class Quotation
{
    public $Q_ID,$CUS_ID,$EMP_ID,$Q_DATE;

    public function __construct($Q_ID,$CUS_ID,$EMP_ID,$Q_DATE)
    {
        $this->Q_ID = $Q_ID;
        $this->CUS_ID = $C_ID;
        $this->EMP_ID = $E_ID;
        $this->Q_DATE = $Q_DATE;
    }

    public static function getAll()
    {
        // echo "ingetall";
        $quotationList = [];
        require("connection_connect.php");
        $sql = "select * from quotation";
        $result = $conn->query($sql);
        // echo $sql;
        while ($my_row = $result->fetch_assoc()) {
            $Q_ID = $my_row[Q_ID];
            $C_ID = $my_row[CUS_ID];
            $E_ID = $my_row[EMP_ID];
            $date = $my_row[Q_DATE];
            $quotationList[] = new Quotation($Q_ID,$C_ID,$E_ID,$date);
        }
        require("connection_close.php");
        return $quotationList;
    }
}