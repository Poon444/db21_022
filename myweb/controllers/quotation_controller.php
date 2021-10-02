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

    public function updateForm()
    {
        $id=$_GET['Q_ID'];
        $quotation = Quotation::get($id);
        $employeeList = Employee::getAll();
        $customerList = Customer::getAll();
        require_once("./views/quotation/updateForm.php");
    }

    public function update()
    {
        $qid=$_GET['Q_ID'];
        $date=$_GET['Q_DATE'];
        $customer=$_GET['CUS_Name'];
        $employee=$_GET['EMP_Name'];
        $qcdt=$_GET['Q_CDT'];
        $qdeposit=$_GET['Q_deposit'];
        $oldid=$_GET['oldid'];
        Quotation::Update($qid,$date,$customer,$employee,$qcdt,$qdeposit,$oldid);

        QuotationController::index();
    }

    public function deleteConfirm()
    {
        $id=$_GET['Q_ID'];
        $quotation = Quotation::get($id);
        require_once("./views/quotation/deleteConfirm.php");
    }
    public function delete()
    {
        $id=$_GET['Q_ID'];
        Quotation::delete($id);
        QuotationController::index();
    }
    
}
?>