<div id="content" <?php  if($limit==5) echo "class='col-sm-12'";?> >
<div class="ttcountdown_module">
<div class="countdown-title module-title"><h3 class="title-group"><?php echo $heading_title; ?></h3></div>
<div class="product-layout">
	<div class="row">
	<div class="countdown-tab-content <?php if($limit==1) echo 'latest-pd'; ?>">
	<div class="countdown-product-inner">
        <?php foreach ($products as $product) { ?>
            <div class="timer-item" <?php if($limit==1) echo "style='border: 1px solid #e2e2e2;'" ?> >
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
    
                            <?php 
                                 $now = time(); // or your date as well
                                 $your_date = strtotime($product['date_added']);
                                 $datediff = $now - $your_date;
                                 $days=floor($datediff/(60*60*24));
                                 if($days < 7){
                             ?>
                                <div class="label_new"><span class="new">new</span></div>
                              <?php }?>
        			</div><!-- images-container -->

        			<div class="des-container">				
        			 <div class="name">
        				<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
        			 </div>
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
            </div><!-- timer-item -->
        <?php } ?>
    	</div>
	</div><!-- countdown-product-inner -->
	</div><!-- countdown-tab-content -->
	</div>
</div>
</div>
<script type="text/javascript">
	$('.countdown-product-inner').owlCarousel({
		autoPlay : false,
		items : <?php echo $limit;?>,
		itemsDesktop : [1199,4],
		itemsDesktopSmall : [991,3],
		itemsTablet: [767,2],
		itemsMobile : [479,1],
		slideSpeed : 3000,
		paginationSpeed : 3000,
		rewindSpeed : 3000,
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