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
} ?>