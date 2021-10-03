<?php 
class PriceproductController
{
    public function index()
    {
        $priceproductList = Priceproduct::getAll();
        require_once("./views/priceproduct/index_priceproduct.php");
    }
    public function search()
    {
        $key=$_GET['key'];
        $priceproductList = Priceproduct::search($key);
        require_once("./views/priceproduct/index_priceproduct.php");
    }
    public function newPriceproduct()
    {
        $productList = product::getAll();
        require_once("./views/priceproduct/newPriceproduct.php"););
    }
    public function addPriceproduct()
    {
        $PRI_ID = $_GET['PRI_ID'];
        $PRO_ID = $_GET['PRO_ID'];
        $PRI_Qty = $_GET['PRI_Qty'];
        $PRI_Price= $_GET['PRI_Price'];
        $PRI_SCEEN = $_GET['PRI_SCEEN'];
        priceproduct::add($PRI_ID,$PRO_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN);
        PriceproductController::index();

    }
    public function updateForm()
    {
        $ID=$_GET['PRI_ID'];
        $PRI = priceproduct::get($ID);
        $productList=product::getAll();
        require_once("./views/priceproduct/updateForm.php");
    }

    public function update()
    {
        $PRI_ID = $_GET['PRI_ID'];
        $PRO_ID = $_GET['PRO_ID'];
        $PRI_Qty = $_GET['PRI_Qty'];
        $PRI_Price= $_GET['PRI_Price'];
        $PRI_SCEEN = $_GET['PRI_SCEEN'];
        priceproduct::update($PRI_ID,$PRO_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN);
        PriceproductController::index();
    }
    public function deleteConfirm()
    {
        $ID=$_GET['PRI_ID'];
        $PRI = priceproduct::get($ID);
        require_once("./views/priceproduct/deleteConfirm.php");
    }
    public function delete()
    {
        $ID=$_GET['PRI_ID'];
        priceproduct::delete($ID);
        PriceproductController::index();
    }
} ?>