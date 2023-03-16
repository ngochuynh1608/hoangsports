<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="mgs"></div>
    <div class="row">
        <div class="col-sm-5">
            <div class="thumbnails-image ">
                <?php if ($thumb) { ?>
                <a class="thumbnail" title="<?php echo $heading_title; ?>">
                    <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                </a>
                <?php } ?>
            </div><!-- thumbnails-image -->

                <div class="wrapper-img-additional">
                    <div class="image-additional" id="gallery_01">
                        <?php if ($images) { ?>
                        <?php foreach ($images as $image) { ?>
                        <a class="thumbnail" href="javascript:void(0);" data-image="<?php echo $image['thumb']; ?>"  title="<?php echo $heading_title; ?>">
                            <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" />
                        </a>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php if($percent!=100){?>
					<div class="sale-off " style="right:30px;">
					     <div class="sale-percent">-<?php echo $percent; ?>%</div>
					</div>
                    <?php } ?>
                </div>
            <!-- end wrapper-img-additional -->
        </div>
        <div class="col-lg-4 col-md-6 col-sm-12" id="product">
          <h1 class="title-product"><?php echo $heading_title; ?></h1>
            <div class="rating">
                <hr />
                    <i class="tick fa fa-chevron-down"></i><p><?php echo $text_model; ?> <?php echo $model; ?></p>
                    <i class="tick fa fa-chevron-down"></i><p><?php echo $text_stock; ?> <?php echo $stock; ?></p>
                    <div class="price" >
                        <div class="price-gruop">
                            <?php if($special) { ?>
                            	<span class="price-new price-new1" style="color:#ff552c;"><?php echo $special; ?></span>
    						<span class="price-old" style="color:#000;"><?php echo $price; ?></span> VNĐ  <span class="" style="color:#fff;">| &nbsp;Giảm <?php echo $percent; ?>&nbsp;%</span>
                                <?php } else{ ?>
                                <span class="price-new price-new1" style="color:#ff552c;"><?php echo $price; ?> VNĐ</span>
                             <?php } ?> 	
    					</div>
                    </div>

            <?php if ($options) { ?>
            <hr>
            <div class="option-product">
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?> ">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'image') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'file') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <button type="button" id="button-upload<?php echo $option['product_option_id']; ?>" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-default btn-block"><i class="fa fa-upload"></i> <?php echo $button_upload; ?></button>
              <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" id="input-option<?php echo $option['product_option_id']; ?>" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'datetime') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group datetime">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'time') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group time">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="HH:mm" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
            <?php } ?>
            <?php } ?>
            </div>
            <?php } ?>
            <!-- <div class="booking-pd">
                <div class="quantity-adder pull-left">
					<div class="quantity-number pull-left">
						<input type="text" name="quantity" id="input-quantity" size="1" value="1">
                        <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
					</div>
					<div class="quantity-wrapper pull-left">
						<span class="add-up add-action fa fa-plus"></span> 
						<span class="add-down add-action fa fa-minus"></span>
					</div>					
					<input type="hidden" name="product_id" value="<?php echo $product_id; ?>">	
    			</div>
                    <div class="cart pull-left">						
                        <button type="button" id="button-cart" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary btn-lg btn-block"><?php echo $button_cart; ?></button>
    				</div>
                </div> -->      
            </div>

        </div>
        <div class="col-lg-3 col-md-6 col-sm-12">
            <?php echo $column_right; ?>
        </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-sm-12">
          <ul class="nav nav-tabs">
            <li <?php if (!$attribute_groups) { echo 'class="active"'; } ?> ><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($review_status) { ?>
            <li><a href="#tab-review" data-toggle="tab"><?php echo $tab_review; ?></a></li>
            <?php } ?>
          </ul>
          <div class="tab-content">
            <div class="des tab-pane <?php if (!$attribute_groups) { echo 'active'; } ?> " id="tab-description"><?php echo $description; ?></div>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
              <div class="fb-comments" data-href="https://www.facebook.com/HoangSports/?fref=ts&__mref=message_bubble" data-numposts="3"></div>
            </div>
            </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <ul class="nav nav-tabs">
                  <li class="active"><a href="#relate" data-toggle="tab">SẢN PHẨM LIÊN QUAN</a></li>
                </ul>
                <div class="tab-content">
            <div class="tab-pane active" id="relate">
                <?php if ($products) { ?>
                <div class="ttcountdown_module">
                <div class="product-layout">
                	<div class="countdown-tab-content">
                	<div class="countdown-product-inner2">
                        <?php foreach ($products as $product) { ?>
                    <div class="timer-item">
                		<div class="item-inner">
                			<div class="images-container">
                				<div class="image">
    							<a href="<?php echo $product['href']; ?>">
    								<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
    							</a>
    						</div>
                             <?php if($product['sort_description']){ ?>
                             <a href="<?php echo $product['href']; ?>">
                    			 <div class="more_info">
                                    <?php echo $product['sort_description']; ?>
                                 </div>
                             </a>
                             <?php } ?>
                            <?php if($product['percent']!=100){?>
							<div class="sale-off">
							     <div class="sale-percent">-<?php echo $product['percent']; ?>%</div>
							</div>
                            <?php } ?>
							<div class="caption des-container">
                                <div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
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
        			         </div><!--des-container-->
        		          </div>
                        </div>
                    </div><!-- timer-item -->
                <?php }
                } ?>
        	</div><!-- countdown-product-inner -->
        	</div><!-- countdown-tab-content -->
        </div>
        </div>
        <script type="text/javascript">
        	$('.countdown-product-inner2').owlCarousel({
        		autoPlay : false,
        		items : 2,
        		itemsDesktop : [1199,4],
        		itemsDesktopSmall : [991,3],
        		itemsTablet: [767,2],
        		itemsMobile : [479,1],
        		slideSpeed : 1000,
        		paginationSpeed : 3000,
        		rewindSpeed : 1000,
        		navigation : true,
        		stopOnHover : true,
        		pagination : false,
        		scrollPerPage:true,
        		afterMove: function(){
        			x = $( ".countdown-tab-content .owl-pagination .owl-page" ).index( $( ".countdown-tab-content .owl-pagination .active" ));
        			var thumbinner = ".thumbinner"+x;
        			$(".list-thumb .thumb li").removeClass('active');
        			$(thumbinner).addClass('active');
        		}
        	});
        </script>
        </div>
     </div>
      <?php } ?>

        </div>

</div>
      <div class="row">
            <div class="col-md-12">
                <h4 class="product_new_label">SẢN PHẨM MỚI NHẤT</h4>
                    <?php $i=0; ?>
                      <div class="products-category">
                        <?php foreach ($products_latest as $product) { $i++;?>
                        <div class="product-layout product-grid col-md-3 col-sm-6 col-xs-6 col-sp-12 <?php if ($i%4==0) echo 'sp4'; ?>" >
                        		<div class="item-inner">
                        			<div class="images-container">
                        				<div class="image">
                							<a href="<?php echo $product['href']; ?>">
                								<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
                							</a>
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

<script type="text/javascript"><!--
$('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
	$.ajax({
		url: 'index.php?route=product/product/getRecurringDescription',
		type: 'post',
		data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
		dataType: 'json',
		beforeSend: function() {
			$('#recurring-description').html('');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();

			if (json['success']) {
				$('#recurring-description').html(json['success']);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--

$('button[id^=\'button-upload\']').on('click', function() {
	var node = this;

	$('#form-upload').remove();

	$('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

	$('#form-upload input[name=\'file\']').trigger('click');

	if (typeof timer != 'undefined') {
    	clearInterval(timer);
	}

	timer = setInterval(function() {
		if ($('#form-upload input[name=\'file\']').val() != '') {
			clearInterval(timer);

			$.ajax({
				url: 'index.php?route=tool/upload',
				type: 'post',
				dataType: 'json',
				data: new FormData($('#form-upload')[0]),
				cache: false,
				contentType: false,
				processData: false,
				beforeSend: function() {
					$(node).button('loading');
				},
				complete: function() {
					$(node).button('reset');
				},
				success: function(json) {
					$('.text-danger').remove();

					if (json['error']) {
						$(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
					}

					if (json['success']) {
						alert(json['success']);

						$(node).parent().find('input').attr('value', json['code']);
					}
				},
				error: function(xhr, ajaxOptions, thrownError) {
					alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
				}
			});
		}
	}, 500);
});
//--></script>
<script type="text/javascript">
    $(".quantity-adder .add-action").click( function(){
		if( $(this).hasClass('add-up') ) {  
			$("[name=quantity]",'.quantity-adder').val( parseInt($("[name=quantity]",'.quantity-adder').val()) + 1 );
		}else {
			if( parseInt($("[name=quantity]",'.quantity-adder').val())  > 1 ) {
				$("input",'.quantity-adder').val( parseInt($("[name=quantity]",'.quantity-adder').val()) - 1 );
			}
		}
	} );
</script>
<script type="text/javascript"><!--
$('#review').delegate('.pagination a', 'click', function(e) {
  e.preventDefault();

    $('#review').fadeOut('slow');

    $('#review').load(this.href);

    $('#review').fadeIn('slow');
});

$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

$('#button-review').on('click', function() {
	$.ajax({
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : ''),
		beforeSend: function() {
			$('#button-review').button('loading');
		},
		complete: function() {
			$('#button-review').button('reset');
		},
		success: function(json) {
			$('.alert-success, .alert-danger').remove();

			if (json['error']) {
				$('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
			}

			if (json['success']) {
				$('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').prop('checked', false);
			}
		}
	});
});
//--></script>
<script type="text/javascript"><!--
$('#button-cart').on('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/add',
		type: 'post',
		data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
		dataType: 'json',
		beforeSend: function() {
			$('#button-cart').button('loading');
		},
		complete: function() {
			$('#button-cart').button('reset');
		},
		success: function(json) {
			$('.alert, .text-danger').remove();
			$('.form-group').removeClass('has-error');

			if (json['error']) {
				if (json['error']['option']) {
					for (i in json['error']['option']) {
						var element = $('#input-option' + i.replace('_', '-'));

						if (element.parent().hasClass('input-group')) {
							element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						} else {
							element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
						}
					}
				}

				if (json['error']['recurring']) {
					$('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
				}

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.mgs').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				//$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		}
	});
});
//--></script>
<?php echo $footer; ?>