<?php
class Employee
{
    public $id,$name;

    public function __construct($id,$name)
    {
        $this->id = $id;
        $this->name = $name;
    }

    public static function getAll()
    {
        $employeeList = [];
        require("connection_connect.php");
        $sql = "SELECT * FROM employee";
        $result = $conn->query($sql);
        while ($my_row = $result->fetch_assoc()) {
            $emp_id = $my_row[EMP_ID];
            $emp_name = $my_row[EMP_Name];
            $employeeList[] = new Employee($emp_id,$emp_name);
        }
        require("connection_close.php");
        return $employeeList;
    }
}