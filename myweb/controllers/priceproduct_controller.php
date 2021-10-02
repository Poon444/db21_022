<?php 
class PriceproductController
{
    public function index()
    {
        $priceproductList = Priceproduct::getAll();
        require_once("./views/priceproduct/index_priceproduct.php");
    }
} ?>