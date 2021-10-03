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

  
}
?>