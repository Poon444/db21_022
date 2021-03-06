<?php
$controllers = array('pages'=>['home', 'error'],
					'quotation'=>['index','newQuotation','addQuotation','search','updateForm','update','deleteConfirm','delete'],
					'priceproduct'=>['index','search','newPriceproduct','addPriceproduct','updateForm','update','deleteConfirm','delete'],
					'detailquotation'=>['index','search','newDetailQuotation','addDetailQuotation','updateForm','update','deleteConfirm','delete']); 

function call($controller, $action){
	//echo "routes to ".$controller."-".$action."<br>";
	require_once("./controllers/" .$controller."_controller.php"); 
	switch($controller)
	{
		case "pages":	$controller = new PagesController();
						break;
						
		case "priceproduct" : 	require_once("models/priceproductModel.php");
								require_once("models/productModel.php");
								$controller = new PriceproductController();
								break;

		case "quotation" :  require_once("models/quotationModel.php");
							require_once("models/employeeModel.php");
							require_once("models/customerModel.php");
							$controller = new QuotationController();
							break;

		case "detailquotation" :  require_once("models/DetailQuotationModel.php");
								  require_once("models/quotationModel.php");
								  require_once("models/stockofproductModel.php");
							      $controller = new DetailQuotationController();
								  break;
	}

	$controller->{$action}();
}

if(array_key_exists($controller, $controllers)) 
{	if(in_array($action, $controllers [$controller]))
	{	call($controller, $action); }
	else
	{	call('pages', 'error'); }

}
else
{	call('pages', 'error');} 
?>