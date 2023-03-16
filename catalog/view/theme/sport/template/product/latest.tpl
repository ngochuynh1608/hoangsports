<?php echo $header; ?>
<div class="container">
<div class="row">
<div class="col-md-12">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  
</div>
<?php echo $content_top; ?>
</div>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">


      <?php if ($products) { ?>
      <div class="row">
        <div class="col-md-2 type-view" style="display: none;" >
          <div class="btn-group hidden-xs">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>

        <div class="col-md-5 sort-view">
          <label class="control-label" for="input-sort" style="font-size:14px; margin-top:6px; float: left;"><?php echo $text_sort; ?></label>
        
          <select id="input-sort" class="form-control" onchange="location = this.value;" style="width: 170px; float: left;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>
      <br />
      <div class="row">
      <div class="col-md-12">
      <?php $i=0; ?>
      <div class="products-category">
        <?php foreach ($products as $product) { $i++;?>
        <div class="product-layout product-grid col-sm-3 col-xs-6 col-sp-12 <?php if ($i%4==0) echo 'sp4'; ?>" >
        		<div class="item-inner">
        			<div class="images-container">
        				<div class="image">
							<a href="<?php echo $product['href']; ?>">
								<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
							</a>
                            <div class="label_new"><span class="new">New</span></div>
    					</div>
                        <a href="<?php echo $product['href']; ?>">


                        </a>
        			</div><!-- images-container -->

        			<div class="des-container">				
        			 <div class="name">
        				<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
        			 </div>
                    <?php if($product['percent']!=100){?>
					<div class="sale-off">
					     <div class="sale-percent">-<?php echo $product['percent']; ?>%</div>
					</div>
                    <?php } ?>
        			 <div class="description">
                        <?php echo $product['gift']; ?>
                     </div>
        			 <div class="price">
                        <?php if($product['special']) { ?>
        				<span class="price-new"><?php echo $product['special']; ?></span>
        				<span class="price-old"><?php echo $product['price']; ?></span>
                        <?php } else{ ?>
                        <span class="price-new"><?php echo $product['price']; ?></span>
                        <?php } ?>
                        <?php 
                             $now = time(); // or your date as well
                             $your_date = strtotime($product['date_added']);
                             $datediff = $now - $your_date;
                             $days=floor($datediff/(60*60*24));
                             if($days < 7){
                         ?>
                            <!--<div class="label_new"><span class="new">new</span></div>-->
                          <?php }?>
        			</div>
        			<div class="box-button">
                        <div class="action">							
							<div class="cart">						
								<button onclick="cart.add('<?php echo $product['product_id']; ?>');" class="btn btn-shopping-cart">
									<i class="fa fa-shopping-cart"></i><span><?php echo $button_cart;?></span>
								</button>
      						</div>

							<div class="button-group">
								<div class="wishlist">
									<a onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="Add to Wish List" class="fa fa-heart product-icon">
										<span></span>
									</a>	
								</div>
								<div class="compare">			
									<a onclick="compare.add('<?php echo $product['product_id']; ?>');" title="Add to Compare" class="fa fa-bar-chart-o product-icon">
										<span></span>
									</a>	
								</div>
							</div>							
						</div>
					</div>
        			</div><!--des-container -->
                </div>
        </div>
        <?php } ?>
        </div>
      </div>
      </div>
      <div class="row">
        
        <div class="col-sm-8 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-4 text-right pagination"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script type="text/javascript"><!--
function display(view) {
	if (view == 'list') {
		$('.product-grid').attr('class', 'product-list');
		
		$('.product-list > div').each(function(index, element) {
			html  = '<div class="right">';
			html += '  <div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '  <div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '  <div class="compare">' + $(element).find('.compare').html() + '</div>';
			html += '</div>';			
			
			html += '<div class="left">';
			
			var image = $(element).find('.image').html();
			
			if (image != null) { 
				html += '<div class="image">' + image + '</div>';
			}
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
					
			html += '  <div class="name">' + $(element).find('.name').html() + '</div>';
			html += '  <div class="description">' + $(element).find('.description').html() + '</div>';
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
				
			html += '</div>';
						
			$(element).html(html);
		});		
		
		$('.display').html('<b>Display:</b> List <b>/</b> <a onclick="display(\'grid\');">Grid</a>');
		
		$.totalStorage('display', 'list'); 
	} else {
		$('.product-list').attr('class', 'product-grid');
		
		$('.product-grid > div').each(function(index, element) {
			html = '';
			
			var image = $(element).find('.image').html();
			
			if (image != null) {
				html += '<div class="image">' + image + '</div>';
			}
			
			html += '<div class="name">' + $(element).find('.name').html() + '</div>';
			html += '<div class="description">' + $(element).find('.description').html() + '</div>';
			
			var price = $(element).find('.price').html();
			
			if (price != null) {
				html += '<div class="price">' + price  + '</div>';
			}
			
			var rating = $(element).find('.rating').html();
			
			if (rating != null) {
				html += '<div class="rating">' + rating + '</div>';
			}
						
			html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
			html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
			html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
			
			$(element).html(html);
		});	
					
		$('.display').html('<b>Display:</b> <a onclick="display(\'list\');">List</a> <b>/</b> Grid');
		
		$.totalStorage('display', 'grid');
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script> 
<?php echo $footer; ?>
