<?php
class DqtailQuotationController
{
    public function index()
    {
        $DetailQuotation_list = DetailQuotation :: getAll();
        require_once("./views/detailquotation/index_detailquotation.php");
    }
  
}
?>