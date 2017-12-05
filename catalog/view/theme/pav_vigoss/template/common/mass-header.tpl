<?php require( PAVO_THEME_DIR."/template/common/config_layout.tpl" );  ?>
 <div class="banner-image" style=" background-image:url(image/catalog/contact-banner.jpg); background-position: 0 0;background-repeat: no-repeat;background-size: cover;margin: 0;padding: 120px 0;margin-bottom: 80px;
min-height: 640px;position: relative; background-attachment:fixed;" >

<div class="category-view-position">
		<h2 class="pagecrumbs-title"><?PHP echo $heading_title;?></h2>
		


 
  <div class="container"><!--<h1><?PHP echo $heading_title;?></h1>-->
  
  
    <ul class="breadcrumb">
  
 
  
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
 </div>
</div>
	</div>
