<?php 
class PriceproductController
{
    public function index()
    {
        echo "hi";
        $priceproductList = priceproduct::getAll();
        require_once("./views/priceproduct/index_priceproduct.php");
    }
} ?>