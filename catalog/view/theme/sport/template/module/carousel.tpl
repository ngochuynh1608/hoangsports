
<!--<h1 style="display: none;"> --><!-- </h1> -->
<div class="col-md-12">
    <div class="brand-logo">
     <h3 class="title-group">ĐỐI TÁC - KHÁCH HÀNG</h3>
      <div id="brand_scroller">
        <div class="slider-wrap">
          <div class="carouse<?php echo $module; ?>">
              <ul class="jcarousel-skin-opencart owl-partners">
                <?php foreach ($banners as $banner) { ?>
                    <li><a href="#"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li>
                <?php } ?>
              </ul>
          </div>
          <a href="#" class="sa-left">&nbsp;</a> <a href="#" class="sa-right">&nbsp;</a> </div>
       <script>
        $(document).ready(function() {
              var owl = $('.owl-partners');
                owl.owlCarousel ({
                    items:5,
                    Loop:true,
                    autoPlay:true,
                    autoPlayTimeout:1500,
                    autoPlayHoverPause:false,
                });
           })
        </script>
      </div>
    </div>
</div>