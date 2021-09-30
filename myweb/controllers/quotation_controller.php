<?php
class QuotationController
{
    public function index()
    {
        $quotationList = Quotation::getAll();
        require_once("./views/quotation/index_quotation.php");
    }
}
?>