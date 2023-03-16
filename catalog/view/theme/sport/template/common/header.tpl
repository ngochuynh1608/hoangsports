
<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?> - <?php echo $name; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/theme/sport/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/sport/javascript/jquery/jquery-ui.js" type="text/javascript"></script> 
<link href="catalog/view/theme/sport/javascript/jquery/css/jquery-ui.css" rel="stylesheet" media="screen" />

<link href="catalog/view/theme/sport/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/theme/sport/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/theme/sport/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700' rel='stylesheet' type='text/css'/>
<link href="https://fonts.googleapis.com/css?family=Taviraj:400,700" rel="stylesheet">
<link href="catalog/view/theme/sport/css/fonts/fonts.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/sport/css/opentheme/css/animate.css" rel="stylesheet" />
<link href="catalog/view/theme/sport/css/stylesheet.css" rel="stylesheet">
<script src="catalog/view/theme/sport/javascript/jquery/elevatezoom/jquery.elevatezoom.js" type="text/javascript"></script>
<link href="catalog/view/theme/sport/css/opentheme/ocslideshow/ocslideshow.css" rel="stylesheet" />
<script src="catalog/view/theme/sport/javascript/opentheme/ocslideshow/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="catalog/view/theme/sport/javascript/opentheme/opcajaxlogin/opcajaxlogin.js" type="text/javascript"></script>
<link href="catalog/view/theme/sport/css/opentheme/opcajaxlogin/css/opcajaxlogin.css" rel="stylesheet"/> 
<!--<link href="catalog/view/theme/sport/css/opentheme/hozmegamenu/css/custommenu.css" rel="stylesheet" />-->
<script src="catalog/view/theme/sport/javascript/opentheme/hozmegamenu/mobile_menu.js" type="text/javascript"></script>
<script src="catalog/view/theme/sport/javascript/opentheme/hozmegamenu/custommenu.js" type="text/javascript"></script>
<link href="catalog/view/theme/sport/css/opentheme/vermegamenu/css/ocsvegamenu.css" rel="stylesheet" />
<script src="catalog/view/theme/sport/javascript/opentheme/owl-carousel/owl.carousel.js" type="text/javascript"></script>
<link href="catalog/view/theme/sport/css/opentheme/css/owl.carousel.css" rel="stylesheet" />
<link href="catalog/view/theme/sport/css/opentheme/vermegamenu/css/ocsvegamenu.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/sport/javascript/jquery.countdown.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/sport/css/opentheme/producttab.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/sport/css/swiper.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/sport/javascript/jquery/owl-carousel/owl.carousel.css" type="text/css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/sport/css/menuslide/css/component.css" type="text/css" rel="stylesheet" media="screen" />
<script src="catalog/view/theme/sport/javascript/opentheme/vermegamenu/custommenu.js" type="text/javascript"></script>
<script src="catalog/view/theme/sport/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/theme/sport/javascript/jquery.plugin.js" type="text/javascript"></script>
<script src="catalog/view/theme/sport/javascript/opentheme/jquery.bpopup.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/sport/javascript/jquery/owl-carousel/owl.carousel.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/sport/javascript/js/swiper.min.js" type="text/javascript"></script>
<script src="catalog/view/theme/sport/css/menuslide/js/classie.js" type="text/javascript"></script>
</head>
<body class="common-home">

<div id="fb-root"></div>
<!-- Load Facebook SDK for JavaScript -->
      <div id="fb-root"></div>
      <script>
        window.fbAsyncInit = function() {
          FB.init({
            xfbml            : true,
            version          : 'v6.0'
          });
        };

        (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>


<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.7&appId=762025767162733";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-86025535-1', 'auto');
  ga('send', 'pageview');

</script>
<header>



  <div class="block-menu3 hidden-xs">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <ul style="width: 100%;">
                    <li class="home" >
            	       <a href="<?php echo $home; ?>"><span class="menu-title">Home</span></a>
                    </li>
                    <li >
            	       <a href="<?php echo $information_href; ?>"><span class="menu-title">Giới thiệu</span></a>
                    </li>
                    <li>
                        <a href="<?php echo $km_href; ?>"><span class="menu-title">Sản phẩm khuyến mãi</span></a>
                    </li> 
                    <li>
                        <a href="<?php echo $news_href; ?>"><span class="menu-title">Tin tức</span></a>
                    </li> 
                    <li>
                        <a href="<?php echo $contact_href; ?>"><span class="menu-title">Liên hệ</span></a>
                    </li>
                    <li>
                        <p><a href="tel:0901129129"> <?php echo $hotline; ?></a></p>
                    </li>
 
                    <!--<li>
                        <p>Ms. Mai:<a href="tel: 0935537537"> 0935.537.537</a></p>
                    </li>-->
                    <li id="shopping-cart">
                     <div class="clearfix">
                    	<div class="heading media" style=" padding-top: 4px !important;">		
                    		<div class="cart-inner">
                    			<a href="<?php echo $cart; ?>"><span class="glyphicon glyphicon-shopping-cart"> </span>
                    			<p id="cart-total" style="color:#FFF !important;">(<?php echo $text_items; ?>)</p></a>
                    		</div>
                    	</div>
                     </div>
                     </li>
                     <li class="pull-right telephone" style="font-style: italic;">
                        <span class="glyphicon glyphicon-earphone"></span><?php echo $telephone; ?>
                    </li> 
                </ul>
            </div>
        </div>
    </div>
  </div>
  <div class="header-container">
    <div class="header-mobile">
        <div class="container header">
            <div class="row">
                <div class="col-xs-1 col-sm-1 ">
                    <a class="menu-mobile-button" id="showRight" href="javascript:void(0)">
                        <i class="fa fa-bars" aria-hidden="true"></i>
                    </a>
                </div>
        		<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-right" id="cbp-spmenu-s2">
                    <?php foreach ($categories as $category) { ?>
                        <a href="<?php echo $category['href'];?>">
                            <?php echo $category['name'];?>
                        </a>
                        <?php if($category['children']){?>
                            <ul class="level2">
                                <?php foreach ($category['children'] as $childs) { ?>
                                    <?php if($childs['child']){ ?>
                                        <?php foreach($childs['child'] as $child){ ?> 
                                            <div class="cot_item">
                                                <li><a href="<?php echo $child['href'];?>" target="_self"><?php echo $child['name'];?></a></li>
                                            </div>
                                        <?php }?>
                                    <?php } ?>
                                <?php } ?>
                            </ul>
                        <?php } ?>
                    <?php } ?>
        		</nav>
        <script type="text/javascript">
			var menuRight = document.getElementById( 'cbp-spmenu-s2' ),
				showRight = document.getElementById( 'showRight' );


			showRight.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( menuRight, 'cbp-spmenu-open' );
				disableOther( 'showRight' );
			};
			function disableOther( button ) {
				if( button !== 'showLeft' ) {
					classie.toggle( showLeft, 'disabled' );
				}
				if( button !== 'showRight' ) {
					classie.toggle( showRight, 'disabled' );
				}
				if( button !== 'showTop' ) {
					classie.toggle( showTop, 'disabled' );
				}
				if( button !== 'showBottom' ) {
					classie.toggle( showBottom, 'disabled' );
				}
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
				if( button !== 'showRightPush' ) {
					classie.toggle( showRightPush, 'disabled' );
				}
			}
		</script>
                <div class="col-sm-3 col-xs-3 col-sp-4">
                    <div id="logo-mobile">
                      <?php if ($logo) { ?>
                      <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="" /></a>
                      <?php } else { ?>
                      <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                      <?php } ?>
                    </div>
                </div>
                <div class="col-sm-3"></div>
                <div class="col-sm-2 col-xs-2 "><a class="icon" href="tel:0941 439 439"><i class="fa fa-phone"></i></a></div>
                <div class="col-sm-1 col-xs-2 "><button style="background: none; border: none;" class="icon search-hidden" data="search"><i class="fa fa-search"></i></button></div>
                <div class="col-sm-1 col-xs-1 "><a class="icon" href="<?php echo $cart;?>"><i class="fa fa-shopping-cart"></i></a></div>
                <script type="text/javascript">
                    $('.search-hidden').click(function(){
                        var attr=$(this).attr('data');
                        if(attr=='search'){
                           $('#search-by-category').css({"display": "block"});
                           $(this).html('<i class="fa fa-times"></i>');
                           $(this).attr('data','hidden');
                        }
                        else{
                           $('#search-by-category').css({"display": "none"});
                           $(this).html('<i class="fa fa-search"></i>');
                           $(this).attr('data','search');
                        }
                    });
                </script>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="">
                     <div id="search-by-category" class="input-group">
                        <div class="search-container">
                            <input type="text" name="search" id="text-search" value="" style="height:46px;" placeholder="Tìm kiếm sản phẩm mong muốn..." class="form-control input"  />
                            
                            
                            <span id="sp-btn-search" class="input-group-btn">
                                <button type="button" id="btn-search-category" class="btn btn-default btn-lg">Search <i class="fa fa-search"></i></button>
                            </span>
                            <script type="text/javascript"><!--
                            $('#btn-search-category').bind('click', function() {
                            	url = 'index.php?route=product/search';
                            
                            	var search = $('.search-container input[name=\'search\']').prop('value');
                            
                            	if (search) {
                            		url += '&search=' + encodeURIComponent(search);
                            	}
                            	var category_id = $('.search-container select[name=\'category_id\']').prop('value');
                            
                            	if (category_id > 0) {
                            		url += '&category_id=' + encodeURIComponent(category_id);
                            	}
                            
                            	var sub_category = $('.search-container input[name=\'sub_category\']:checked').prop('value');
                            
                            	if (sub_category) {
                            		url += '&sub_category=true';
                            	}
                            	location = url;
                            });
                            </script>
        
                        </div>
                    </div>
                  </div>
                </div>
            </div>
        </div>
        <div class="main-mn-m" style="display:none;">
            <ul class="ul-mf-m">
                <?php foreach ($categories as $category) { ?>
                    <li class="mobile_menu_item menu-block">
                        <a href="<?php echo $category['href'];?>">
                            <img class="icon-mn" src="<?php echo $category['thumb'];?>" alt=" <?php echo $category['name'];?>">
                            <span><?php echo $category['name'];?></span>
                        </a>
                    </li>         
                <?php } ?>  
            </ul>
            <div class="clear"></div>
        </div>
    </div>
    <div class="container hidden-xs hidden-md2">
      <div class="row">
          <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12 ">
            <div id="logo">
              <?php if ($logo) { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
              <?php } else { ?>
              <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?>
            </div>
          </div>
          <div class="col-lg-6 col-md-5">
            <h1 class="name_shop">Thiết bị thể thao Hoàng Sports</h1>
            <h4 class="slogan">Đại lý chính thức của Wilson</h4>
          </div>
          <div class="col-lg-4 col-md-5 col-xs-12 col-sm-7 ">
            <div class="quick-access">
             <div id="search-by-category" class="input-group">
                <div class="search-container">
                    <input type="text" name="search" id="text-search-value" value="" placeholder="Tìm kiếm sản phẩm mong muốn..." class="form-control input-lg"  />
                    <span id="sp-btn-search" class="input-group-btn">
                        <button type="button" id="btn-search" class="btn btn-default btn-lg"> Seach <i class="fa fa-search"></i></button>
                    </span>
                    <script type="text/javascript">
                    $('#btn-search').bind('click', function() {
                    	url = 'index.php?route=product/search';
                    
                    	var search = $('#text-search-value').val();
                    	if (search) {
                    		url += '&search=' + encodeURIComponent(search);
                    	}
                        location = url;

                    });
                    </script>

                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
<div class="block-menu2 hidden-xs hidden-md2 ">
<div class="container">
   <div class="row">
    <div class="col-md-12 col-sm-12">

<div class="nav-container visible-lg visible-md hidden-sm hidden-xs ">
     <div class="custom-menu">
		<div id="pav-mainnav" class="quick-access">			
			<div class="">
                <div class="pav-megamenu">     
                	<div class="navbar navbar-default">           
                		<div id="mainmenutop" class="megamenu" role="navigation">          
                			<div class="navbar-header"> 
                				<a class="navbar-toggle hidden-lg hidden-md" href="javascript:;" data-target=".navbar-collapse" data-toggle="collapse">
                		        	<span class="fa fa-bars"></span>		        
		     	                </a>

				                <div class="collapse navbar-collapse navbar-ex1-collapse hidden-sm hidden-xs">
                					<ul class="nav navbar-nav megamenu">
                                        <?php foreach ($categories as $category) { ?>
                                        <li class=" aligned-fullwidth parent dropdown " >
					                       <a href="<?php echo $category['href']; ?>" class="dropdown-toggle"><span class="menu-title"><?php echo $category['name']; ?></span></a>
                                           <div class="dropdown-menu"  style="width:100%" >
                                                <div class="dropdown-menu-inner">
                                                    <div class="row">
                                                        
                                                            <?php 
                                                            if($category['children'])
                                                            {
                                                                foreach($category['children'] as $category_child){
                                                                ?>
                                                                <div class="mega-col col-xs-2 sub_category" >
                                                                    <div class="cot_title">
                                                                        <h3><a href="<?php echo $category_child['href'];?>" target="_self"><?php echo $category_child['name'];?></a></h3>
                                                                    </div>
                                                                    <div class="cot_content">
                                                                        <?php if($category_child['child']){ ?>
                                                                            <?php foreach($category_child['child'] as $child){ ?> 
                                                                                <div class="cot_item">
                                                                                    <a href="<?php echo $child['href'];?>" target="_self"><i class="fa fa-caret-right" aria-hidden="true"></i> <?php echo $child['name'];?></a>
                                                                                </div>
                                                                            <?php }?>
                                                                        <?php } ?>
                                                                    </div>
                                                                </div>
                                                                <?php 
                                                                }
                                                            }
                                                            ?>

                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <?php } ?>
                                        <!-- DANH MỤC SẢN PHẨM -->  
                                    </ul>                              
				                </div>
			                 </div>
                        <!-- END MENU -->
                        </div>
	                   </div>
                    </div>				
                </div>					
            </div>
        </div>
    </div>
</div>  
</header>