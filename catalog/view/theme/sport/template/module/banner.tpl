
<?php if($banners){ ?>
<?php $col=12/count($banners);?>
<?php foreach($banners as $banner){ ?> 
    <div class="col-lg-12 col-md-12 col-sm-4 col-xs-4 box banner">
        <div style="margin-top:15px;">
            <a href="<?php echo $banner['link'];?>">
            <img alt="" class="img-responsive" src="<?php echo $banner['image'];?>" style="position: relative;  " title="5 a One"></a></div>
    </div>

<?php } }?>



