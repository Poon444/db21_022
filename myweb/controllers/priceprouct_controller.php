<?php class priceproductController
{
    public function index()
    {
        $priceproduct_list = priceproduct::getALL();
        require_once('./views/priceproduct/index_priceproduct.php');
    }
} ?>