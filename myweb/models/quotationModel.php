<?php
class Quotation
{
    public $Q_ID,$Q_DATE,$CUS_NAME,$EMP_NAME,$CUS_Add;
    public $CUS_ID,$EMP_ID,$Q_CDT,$Q_deposit;

    public function __construct($Q_ID,$Q_DATE,$CUS_NAME,$EMP_NAME,$CUS_Add,$CUS_Tel,$CUS_ID,$EMP_ID,$Q_CDT,$Q_deposit)
    {
        $this->Q_ID = $Q_ID;
        $this->Q_DATE = $Q_DATE;
        $this->CUS_NAME = $CUS_NAME;
        $this->EMP_NAME = $EMP_NAME;
        $this->CUS_Add = $CUS_Add;
        $this->CUS_Tel = $CUS_Tel;

        $this->CUS_ID = $CUS_ID;
        $this->EMP_ID = $EMP_ID;
        $this->Q_CDT = $Q_CDT;
        $this->Q_deposit = $Q_deposit;

    }

    public static function getAll()
    {
        $quotationList = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM quotation NATURAL JOIN customer NATURAL JOIN employee ORDER BY Q_ID";
        $result = $conn->query($sql);
        while ($my_row = $result->fetch_assoc()) {
            $q_id = $my_row[Q_ID];
            $date = $my_row[Q_DATE];
            $cus_name = $my_row[CUS_Name];
            $emp_name = $my_row[EMP_Name];
            $cus_add = $my_row[CUS_Add];
            $cus_tel = $my_row[CUS_Tel];

            $cus_id = $my_row[CUS_ID];
            $emp_id = $my_row[EMP_ID];
            $q_cdt = $my_row[Q_CDT];
            $q_deposit = $my_row[Q_deposit];

            $quotationList[] = new Quotation($q_id,$date,$cus_name,$emp_name,$cus_add,$cus_tel,$cus_id,$emp_id,$q_cdt,$q_deposit);
        }
        require("connection_close.php");
        return $quotationList;
    }

    public static function Add($qid,$qdate,$idcus,$idemp,$qcdt,$qdeposit,$pdom)
    { 
       require("connection_connect.php");
       $float = (float)$qdeposit;
       $sql = "INSERT INTO `quotation` (`Q_ID`, `Q_DATE`, `EMP_ID`, `CUS_ID`, `Q_CDT`, `Q_deposit`, `PDO_M`) VALUES ('$qid', '$qdate', '$idemp', '$idcus', '$qcdt', '$qdeposit','$pdom')";
       $result = $conn->query($sql);
       require("connection_close.php");
       return  ;
    }

    public static function search($key)
    {
        require("connection_connect.php");
        $sql="SELECT * FROM quotation NATURAL JOIN employee NATURAL JOIN customer WHERE (Q_ID like '%$key%' or Q_DATE like '%$key%' or EMP_Name like '%$key%' or CUS_Name like '%$key%')and CUS_ID=CUS_ID";
        $result=$conn->query($sql);
        while($my_row=$result->fetch_assoc())
        {
            $q_id = $my_row[Q_ID];
            $date = $my_row[Q_DATE];
            $cus_name = $my_row[CUS_Name];
            $emp_name = $my_row[EMP_Name];
            $cus_add = $my_row[CUS_Add];
            $cus_tel = $my_row[CUS_Tel];

            $cus_id = $my_row[CUS_ID];
            $emp_id = $my_row[EMP_ID];
            $q_cdt = $my_row[Q_CDT];
            $q_deposit = $my_row[Q_deposit];
            $quotationList[] = new Quotation($q_id,$date,$cus_name,$emp_name,$cus_add,$cus_tel,$cus_id,$emp_id,$q_cdt,$q_deposit);
        }
        require("connection_close.php");
        return $quotationList;

    }

    public static function get($id)
    {
        require("connection_connect.php");
        $sql="SELECT * FROM quotation NATURAL JOIN employee NATURAL JOIN customer WHERE Q_ID='$id' and CUS_ID = CUS_ID";
        $result=$conn->query($sql);
        $my_row=$result->fetch_assoc();
        $q_id = $my_row[Q_ID];
        $date = $my_row[Q_DATE];
        $cus_name = $my_row[CUS_Name];
        $emp_name = $my_row[EMP_Name];
        $cus_add = $my_row[CUS_Add];
        $cus_tel = $my_row[CUS_Tel];

        $cus_id = $my_row[CUS_ID];
        $emp_id = $my_row[EMP_ID];
        $q_cdt = $my_row[Q_CDT];
        $q_deposit = $my_row[Q_deposit];
        require("connection_close.php");
        return new Quotation($q_id,$date,$cus_name,$emp_name,$cus_add,$cus_tel,$cus_id,$emp_id,$q_cdt,$q_deposit);

    }
    public static function Update($qid,$date,$idcus,$idemp,$qcdt,$qdeposit,$oldid)
     {
        require("connection_connect.php");
        $sql="UPDATE `quotation` SET `Q_ID`='$qid',`Q_DATE`='$date',
        `EMP_ID`='$idemp',`CUS_ID`='$idcus',`Q_CDT`='$qcdt',`Q_deposit`='$qdeposit' WHERE Q_ID = '$oldid'";
        $result=$conn->query($sql);
        require("connection_close.php");
        return ;
     }

     public static function delete($id)
     {
         require("connection_connect.php");
         $sql = "DELETE FROM quotation WHERE Q_ID = '$id'";
         $result = $conn->query($sql);
         require("connection_close.php");
         return ;
     }
}