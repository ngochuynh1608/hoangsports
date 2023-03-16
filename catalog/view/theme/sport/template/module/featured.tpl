<div id="content" class="col-sm-12">

<script type="text/javascript">

$(document).ready(function() {
      $(".owl-demo-tabproduct-featured<?php echo $code; ?>").owlCarousel({
    	autoPlay: false,  //Set AutoPlay to 3 seconds
    	items : 5,
    	slideSpeed : 200,
    	navigation : true,
    	paginationNumbers : true,
    	pagination : false,
    	stopOnHover : false,
    	itemsDesktop : [1199,5],
    	itemsDesktopSmall : [991,3],
    	itemsTablet: [767,2],
    	itemsMobile : [372,1],
      });
});

</script>
<div class="product-tabs-container-slider featured">
<h3 class="title-group"><?php echo $heading_title; ?></h3>
		<div class="tab_container"> 
		      <div class="tab_content">
				<ul class="owl-demo-tabproduct owl-demo-tabproduct-featured<?php echo $code; ?>">
                  <?php foreach ($products as $product) { ?>
				    <li class='row_item'><ul>		
                        <li class="item item-inner">
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
                                    <!-- <div class="action">							
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
                                    
                    			     <div class="button-group">	
                    					<button class="btn-compare2" type="button"  title="Compare this Product"  onclick="compare.add('<?php echo $product['product_id']; ?>');"><?php echo $button_compare;?><em class="tooltips"><?php echo $button_compare;?></em></button>
                    				</div>
                                	<button class="btn-addtocart" type="button"  title="Add to Cart"   onclick="cart.add('<?php echo $product['product_id']; ?>');"><?php echo $button_cart;?></button>
                    				-->	
    							</div>
    						</div>
    					</li>
					</ul></li>
                  <?php } ?>
				    </ul>
				</ul>
			</div> <!-- end new products -->	
		</div> <!-- .tab_container -->
</div> <!-- End New Product -->
</div>