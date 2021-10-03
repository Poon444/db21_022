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
        require_once("./views/priceproduct/newPriceproduct.php");
    }
    public function addPriceproduct()
    {
        $PRI_ID = $_GET['PRI_ID'];
        $PRO_ID = $_GET['PRO_ID'];
        $PRI_Qty = $_GET['PRI_Qty'];
        $PRI_Price= $_GET['PRI_Price'];
        $PRI_SCEEN = $_GET['PRI_SCEEN'];
        priceproduct::add($PRO_ID,$PRI_ID,$PRI_Qty,$PRI_Price,$PRI_SCEEN);
        PriceproductController::index();

    }
} ?>