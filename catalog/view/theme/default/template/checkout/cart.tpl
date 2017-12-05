<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb log-dis">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="col-sm-12 " style="margin:auto; float:none;  margin-top:40px;"><?php echo $content_top; ?>
    <?PHP 
    	echo $EditQuantExceeds;
    ?>
    
      <h1 class="sh-title"><?php echo $heading_title; ?>
       <!-- <?php if ($weight) { ?>
        &nbsp;(<?php echo $weight; ?>)
        <?php } ?>-->
      </h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <div class="table-responsive">
          <table class="table table-bordered sh-cart">
            <thead>
              <tr>
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-left"><?php echo $column_quantity; ?></td>
                <td class="text-right"><?php echo $column_price; ?></td>
                <td class="text-right"><?php echo $column_total; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-center"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?PHP
                  if($productQuantinstock==$product['cart_id']){ ?>
                  <span class="text-danger">****</span>
                  <?php } ?>
                  
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>
                <td class="text-left"><?php echo $product['model']; ?></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <?PHP
                    	if( $product['CrossSell']=="No")
                        {
                    ?>
                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                    <span class="input-group-btn">
                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary cart-ref"><i class="fa fa-refresh"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger cart-del" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div>
                    <?PHP
                    }
                    else
                    {
                    	echo "CrossSale Product";
                        ?>
                       <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger cart-del" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div>
                    <?PHP
                    } 
                       
                    ?>
                    
                    
                    </td>
                <td class="text-right"><?php if( $product['specialprice']!='') { echo '<strike>'.$product['price'].'</strike>'; echo " ".$Currency. $product['specialprice']; } else  echo $product['price'];?> </td>
                <td class="text-right"><?php echo $product['total']; ?></td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $voucher) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $voucher['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger pull-right" onclick="voucher.remove('<?php echo $voucher['key']; ?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div></td>
                <td class="text-right"><?php echo $voucher['amount']; ?></td>
                <td class="text-right"><?php echo $voucher['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
     
     <!-- <?php if ($modules) { ?> -->
     
     <!-- <h2><?php echo $text_next; ?></h2>
      <p class="wo-para"><?php echo $text_next_choice; ?></p>-->
      
     <!-- 
      <div class="panel-group sh-accor cart-accord-content col-md-8" id="accordion">
        <?php 
        		$cnt=0; 
                foreach ($modules as $module) 
                {
                  	# echo $module; 
                 } 
          ?>
      </div>
      <?php } ?>
     -->
     
     <div class="col-md-8 pl">
    <!--  <label class="col-sm-2 control-label" for="input-coupon">Enter your coupon here</label>-->
      <div class="input-group">
        <input type="text" name="coupon" value="" placeholder="Enter your coupon here" id="input-coupon" class="form-control">
        <span class="input-group-btn  ">
        <input type="button" value="Apply Coupon" id="button-coupon" data-loading-text="Loading..." class="btn btn-primary con-check ap-coupon">
        </span></div>
      <script type="text/javascript"><!--
$('#button-coupon').on('click', function() {
	$.ajax({
		url: 'index.php?route=total/coupon/coupon',
		type: 'post',
		data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
		dataType: 'json',
		beforeSend: function() {
			$('#button-coupon').button('loading');
		},
		complete: function() {
			$('#button-coupon').button('reset');
		},
		success: function(json) {
			$('.alert').remove();

			if (json['error']) {
				$('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}

			if (json['redirect']) {
				location = json['redirect'];
			}
		}
	});
});
//--></script>
    </div>
     
      <div class="row">
        <div class="col-sm-4 ">
          <table class="table table-bordered sh-carttotal">
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="text-right"><?php echo $total['text']; ?></td>
            </tr>
            <?php } ?>
          </table>
          
          <div class="buttons">
       
        <div class="pull-right">
        <a href="<?php echo $continue; ?>" class="btn btn-default con-shaping"><?php echo $button_shopping; ?></a>
        
        <a href="<?php echo $checkout; ?>" class="btn btn-primary con-check"><?php echo $button_checkout; ?></a></div>
      </div>
          
        </div>
      </div>
      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 