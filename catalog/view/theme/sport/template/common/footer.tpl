<div class="container">
    <div class="row">
        <div class="col-sm-12">
        <div id="cmsblock-19" class="cmsblock">
			
        </div>
        </div>
    </div>
</div>

</div><!-- /.box -->
      <!-- Your customer chat code -->
      <!-- Your customer chat code -->
      <div class="fb-customerchat"
        attribution=setup_tool
        page_id="115885238851206"
  logged_in_greeting="Xin chào, Hoàng Sports có thể giúp gì cho bạn?"
  logged_out_greeting="Xin chào, Hoàng Sports có thể giúp gì cho bạn?">
      </div>
<footer>
  <div class="top-footer">
    <div class="container">
      <div class="row">
        <div class="col-md-2 col-sm-6 col-xs-12 ">
          <div class="f-col f-col1">
            <div class="footer-title">
              <h2>THÔNG TIN CÔNG TY</h2>
            </div>
            <div class="footer-content">
                <ul class="list-unstyled">
                  <?php foreach ($informations as $information) { ?>
                  <?php if ($information['sort']==1){ ?>
                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                  <?php } ?>
                  <?php } ?>
                </ul>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12 ">
          <div class="f-col f-col2">
            <div class="footer-title">
              <h2>CHÍNH SÁCH CỬA HÀNG</h2>
            </div>
            <div class="footer-content">
              <ul>
                  <?php foreach ($informations as $information) { ?>
                  <?php if ($information['sort']==2){ ?>
                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                  <?php } ?>
                  <?php } ?>
              </ul>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-sm-6 col-xs-12 ">
          <div class="f-col f-col3">
            <div class="footer-title">
              <h2>FACEBOOK</h2>
            </div>
            <div class="footer-content">
            <div class="fb-page" data-href="https://www.facebook.com/HoangSports/?fref=ts" data-height="180" data-width="250" data-tabs="messages" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/HoangSports/?fref=ts" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/HoangSports/?fref=ts">Hoàng Sports</a></blockquote></div>
            </div>
          </div>
        </div>
        <div class="col-md-4 col-sm-6 col-xs-12 ">
          <div class="footer-title">
            <h2>Liên hệ với chúng tôi</h2>
          </div>
          <div class="footer-content box-information">
          <ul>
            <li>
              <i class="fa fa-home"></i>
              <p><?php echo $address;?></p>
            </li>
            <li>
              <i class="fa fa-envelope-o"></i>
              <a href="#"><p><?php echo $email; ?></p></a>
            </li>
            <li>
              <i class="fa fa-phone"></i>
              <p><a href="tel:<?php echo $telephone; ?>"></a><?php echo $telephone; ?> </p>
            </li>
            <li>
              <i class="fa fa-mobile"></i>
                <p><?php echo $fax; ?></p>
            </li>
          </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="end-footer">
    <div class="container">
        <div class="row">
            <div class="col-md-11">
                <p class="powered-footer">Copyright © Hoàng Sport All rights reserved.<br />
                Công ty TNHH Thịnh Tiến - GPKD số  0400406639 do Sở KH và ĐT TP Đà Nẵng cấp ngày 18/12/2001 <br/>
                Trụ sở chính:61 Hoàng Hoa Thám, P. Tân Chính, Q. Thanh khê, Tp. Đà Nẵng<br />
                Địa chỉ cửa hàng: <?php echo $address; ?><br />
                Email: <?php echo $email; ?><br />
                Hotline: <?php echo $telephone; ?><br />
                
                </p>
              <span><a href="#"></a></span>
              <div class="b-img">
              <a href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=47887 " target="_blank"><img src="catalog/view/theme/sport/image/bocongthuong.png" /></a>
              </div>
              <div class="design" style="float:right;">
                
                <span style="color:#fff;">Desgin by <a href="http://ionsite.vn/" target="_blank">IONSITE</a></span>
              </div>
          </div>
        </div>
    </div>
  </div>
</footer>


<script type="text/javascript" src="https://secure.skypeassets.com/i/scom/js/skype-uri.js">
<div id="back-top" class="hidden-xs"></div>
<script type="text/javascript">
    $(document).ready(function(){
     // hide #back-top first
     $("#back-top").hide();
     // fade in #back-top
     $(function () {
      $(window).scroll(function () {
       if ($(this).scrollTop() > 300) {
        $('#back-top').fadeIn();
       } else {
        $('#back-top').fadeOut();
       }
      });
      // scroll body to 0px on click
      $('#back-top').click(function () {
       $('body,html').animate({
        scrollTop: 0
       }, 800);
       return false;
      });
     });
    });
</script>
</body>
</html>