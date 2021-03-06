<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
   <div class="container-fluid">
    <!--  <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $text_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        
        
        
        <button type="button" data-toggle="tooltip"  class="btn btn-danger" ><i class="fa fa-trash-o"></i></button>
      </div>-->
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div
  ></div>
  <div class="container-fluid" style="min-height:500px">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
      </div>
      
      
       <?PHP
           
          /* echo "<pre>";
              	print_r($ProductDetails);
              exit;
            */  
              foreach($ProductDetails as $key=>$val)
              {
              	
              	$parent_product = $val['Parent'];
                $parent_productId = $val['ParentProduct'];
               
                $CrossSaleProductId = $val['CrossSaleProduct'];
                $CrossSaleProduct = $val['Product'];
                
                $SalePrice = $val['SalePrice'];
                $ProductActualPrice = $val['ProductActualPrice'];
              }
              
              ?>
      
      <div class="panel-body" >
        <form id="crosssale_form" autocomplete="off">
        <div class="form-group">
        <input type="hidden" id="CrosssaleID" value="<?PHP echo $CrosssaleID?>" />
                <label class="col-sm-2 control-label" ><span data-toggle="tooltip" title="Auto Suggest"><?php echo $product_label; ?></span></label>
                <div class="col-sm-10">
                  <input type="text" placeholder="<?php echo $product_placeholder; ?>" id="cross-sale-parent-prd" class="form-control cross-sale-parent-prd" value='<?PHP echo $parent_product; ?>' />
<span class="cross-sale-parent-prd-error" > </span>                  
<input type="hidden" id="cross-sale-parent-prd-selected" value="<?PHP echo $parent_productId?>"  />
                  <div id="product-list" class="well well-sm" style="height: 150px; overflow: auto; display:none">
                    
                  </div>
                </div>
                <div class="clearfix"></div>
              </div>
              
             
              
<div class="cross-sale-prd-section col-md-12 sale-prd-section" id="crosssale_remove0">
                
                <div class="col-md-2 remlp">
				 <label class="col-sm-12 control-label" ><span data-toggle="tooltip" title="Auto Suggest"><?php echo $cross_sale_product_label; ?></span></label>
                 </div>
                 <div class="col-md-3 ">
<input type="text" name="cross-sale-product" value="<?PHP echo $CrossSaleProduct?>" placeholder="<?php echo $cross_product; ?>" id="cross-sale-prd" class="form-control cross-sale-prd" />
<span class="cross-sale-prd-error"> </span>   
<input type="hidden" class="cross-sale-prd-selected" value="<?PHP echo $CrossSaleProductId?>" />

			<div class="cross-sale-product-list well well-sm" style="height: 150px; overflow: auto; display:none">

            </div>
            
                </div>
                
                <div class="col-md-2 remlp">
                
                 <input type="text" placeholder="Actual Price" class="form-control ActualPrice" value="<?PHP echo $ProductActualPrice?>" id="ActualProducPrice" readonly="readonly"/>
                </div>
                
                <div class="col-md-2 remlp">
                	
                    
				  <input type="text" value="<?PHP echo $SalePrice?>" placeholder="<?php echo $cross_sale_product_price; ?>" class="form-control cross-sale-prd-price" />
                  <span> </span>   
                  
                  <div class="clearfix"></div>
                  
                 </div>
                 
                 <div class="col-md-3 remlp pull-right">
                 <input type="button" class="btn  btn-primary crosssale_addmore" value="Add More"  />
				 </div>
                 
                
 <div class="clearfix"></div>                
</div>        
        
        
        
        
        <div class="row">
          <div class="col-sm-6 text-left"><?php #echo $pagination; ?></div>
          <div class="col-sm-6 text-right"><?php #echo $results; ?></div>
        </div>
        
</div>
    
  </div>
  
  <div>
  <span class="crosssale_msg"></span>
        <input type="button" class="btn btn-success pull-right update-cross-sale" value="Update Cross Sale" />
        
        </div>
  </form>
  
  <script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	var url = 'index.php?route=catalog/product&token=<?php echo $token; ?>';

	var filter_name = $('input[name=\'filter_name\']').val();

	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}

	var filter_model = $('input[name=\'filter_model\']').val();

	if (filter_model) {
		url += '&filter_model=' + encodeURIComponent(filter_model);
	}

	var filter_price = $('input[name=\'filter_price\']').val();

	if (filter_price) {
		url += '&filter_price=' + encodeURIComponent(filter_price);
	}

	var filter_quantity = $('input[name=\'filter_quantity\']').val();

	if (filter_quantity) {
		url += '&filter_quantity=' + encodeURIComponent(filter_quantity);
	}

	var filter_status = $('select[name=\'filter_status\']').val();

	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status);
	}

	location = url;
});
//--></script>
  <script type="text/javascript"><!--
$('input[name=\'filter_name\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['name'],
						value: item['product_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter_name\']').val(item['label']);
	}
});

$('input[name=\'filter_model\']').autocomplete({
	'source': function(request, response) {
		$.ajax({
			url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_model=' +  encodeURIComponent(request),
			dataType: 'json',
			success: function(json) {
				response($.map(json, function(item) {
					return {
						label: item['model'],
						value: item['product_id']
					}
				}));
			}
		});
	},
	'select': function(item) {
		$('input[name=\'filter_model\']').val(item['label']);
	}
});
//--></script></div>
<?php echo $footer; ?>


<script>

$(document).ready(function()
{
	//$(".cross-sale-prd").blur(function()
	$(document).on('blur','.cross-sale-prd',function()
	{
			var saleprd = $(this).val();
				saleprd = $.trim(saleprd);
				
			if(saleprd=='')
			{
				var residein = $(this).parent().parent().attr('id');
				$("#"+residein+" .cross-sale-prd-selected").val('');
				$("#"+residein+" .ActualPrice").val('');
				$("#"+residein+" .ActualPrice").attr('placholder','Actual price');
			}
			
	});
});





</script>
