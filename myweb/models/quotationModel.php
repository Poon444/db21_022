<?php
class Quotation
{
    public $Q_ID,$Q_DATE,$CUS_NAME,$EMP_NAME,$CUS_Add;

    public function __construct($Q_ID,$Q_DATE,$CUS_NAME,$EMP_NAME,$CUS_Add,$CUS_Tel)
    {
        $this->Q_ID = $Q_ID;
        $this->Q_DATE = $Q_DATE;
        $this->CUS_NAME = $CUS_NAME;
        $this->EMP_NAME = $EMP_NAME;
        $this->CUS_Add = $CUS_Add;
        $this->CUS_Tel = $CUS_Tel;

    }

    public static function getAll()
    {
        // echo "ingetall";
        $quotationList = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM quotation NATURAL JOIN customer NATURAL JOIN employee";
        $result = $conn->query($sql);
        // echo $sql;
        while ($my_row = $result->fetch_assoc()) {
            $q_id = $my_row[Q_ID];
            $date = $my_row[Q_DATE];
            $cus_name = $my_row[CUS_Name];
            $emp_name = $my_row[EMP_Name];
            $cus_add = $my_row[CUS_Add];
            $cus_tel = $my_row[CUS_Tel];
            $quotationList[] = new Quotation($q_id,$date,$cus_name,$emp_name,$cus_add,$cus_tel);
        }
        require("connection_close.php");
        return $quotationList;
    }

    public static function Add($qid,$qdate,$idcus,$idemp,$qcdt,$qdeposit,$pdom)
    { 
       require("connection_connect.php");
       $float = (float)$qdeposit;
       $sql = "INSERT INTO `quotation` (`Q_ID`, `Q_DATE`, `EMP_ID`, `CUS_ID`, `Q_CDT`, `Q_deposit`, `PDO_M`) VALUES ('$qid', '$qdate', '$idemp', '$idcus', '$qcdt', '$qdeposit','$pdom')";
       echo "hi";
       $result = $conn->query($sql);
       require("connection_close.php");
       return  ;
    }
}