<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
    
    <div class="col-md-1 col-sm-1 col-xs-2 col-xs-offset-1 col-md-offset-1 col-sm-offset-1 col-left custom-mobile"><span class="mr-verticle-line"><span class="hidden">hidden</span></span></div>
    
    <div class="col-md-8 col-sm-8 col-xs-10 col-xs-offset-1 col-md-offset-2 col-sm-offset-2 col-right custom-mobile">
				<div class="block-content about-content">
					<!--<div class="sub-title">Our Story</div>-->
					<div class="block-title">
						<h2><?php echo $heading_title; ?></h2>
					</div>
					 
                     
                      <?php echo $content_top; ?>
                      
                      
                         <?php echo $text_message; ?>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary reg-button"><?php echo $button_continue; ?></a></div>
					
				</div>
			</div>
    
    
  
    
   
        
        
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>