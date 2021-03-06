<?php
class DetailQuotationController
{
    public function index()
    {
        $DetailQuotation_list = DetailQuotation :: getAll();
        require_once("./views/detailquotation/index_detailquotation.php");
    }

    public function search()
    {
        $key=$_GET['key'];
        $DetailQuotation_list = DetailQuotation::search($key);
        require_once("./views/detailquotation/index_detailquotation.php");
    }

    public function newDetailQuotation()
    {
        $StockofProductList = StockofProduct::getAll();
        $quotation = Quotation::getAll();
        require_once("./views/detailquotation/newDetailQuotation.php");
    }

    public function addDetailQuotation()
    {
        $Q_ID = $_GET['Q_ID'];
        $DQ_ID = $_GET['DQ_ID'];
        $STOCK_ID = $_GET['STOCK_ID'];
        $DQ_NUMBER= $_GET['DQ_NUMBER'];
        $DQ_QTY = $_GET['DQ_QTY'];
        $DQ_CUINT =$_GET['DQ_CUINT'];
        DetailQuotation::Add($Q_ID,$DQ_ID,$STOCK_ID,$DQ_NUMBER,$DQ_QTY,$DQ_CUINT);
        DetailQuotationController::index();

    }

    public function updateForm()
    {
        $id=$_GET['DQ_ID'];
        $detailquotation = DetailQuotation::get($id);
        $StockofProductList = StockofProduct::getAll();
        $quotation = Quotation::getAll();
        require_once("./views/detailquotation/updateForm.php");
    }

    public function update()
    {
        $Q_ID = $_GET['Q_ID'];
        $DQ_ID = $_GET['DQ_ID'];
        $STOCK_ID = $_GET['STOCK_ID'];
        $DQ_NUMBER= $_GET['DQ_NUMBER'];
        $DQ_QTY = $_GET['DQ_QTY'];
        $DQ_CUINT =$_GET['DQ_CUINT'];
        $oldid =$_GET['oldid'];
        DetailQuotation::Update($Q_ID,$DQ_ID,$STOCK_ID,$DQ_NUMBER,$DQ_QTY,$DQ_CUINT,$oldid);
        DetailQuotationController::index();

    }

    public function deleteConfirm()
    {
        $id=$_GET['DQ_ID'];
        $detailquotation = DetailQuotation::get($id);
        require_once("./views/detailquotation/deleteConfirm.php");
    }
    public function delete()
    {
        $id=$_GET['DQ_ID'];
        DetailQuotation::delete($id);
        DetailQuotationController::index();
    }

}
?>