<?php
class QuotationController
{
    public function index()
    {
        $quotationList = Quotation::getAll();
        require_once("./views/quotation/index_quotation.php");
    }
    public function newQuotation()
    {
        $employeeList = Employee::getAll();
        $customerList = Customer::getAll();
        require_once("./views/quotation/newQuotation.php");
    }
    public function addQuotation()
    {

        $qid=$_GET['Q_ID'];
        $date=$_GET['Q_DATE'];
        $customer=$_GET['CUS_Name'];
        $employee=$_GET['EMP_Name'];
        $qcdt=$_GET['Q_CDT'];
        $qdeposit=$_GET['Q_deposit'];
        $pdom=-1;
        Quotation::Add($qid,$date,$customer,$employee,$qcdt,$qdeposit,$pdom);

        QuotationController::index();
    }
    public function search()
    {
        $key=$_GET['key'];
        $quotationList = Quotation::search($key);
        require_once("./views/quotation/index_quotation.php");
    }
}
?>