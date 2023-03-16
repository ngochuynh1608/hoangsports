<?php echo $header; ?>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <ul class="breadcrumb">
                <?php $i=0; foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php if($i == 0){ ?><i class="fa fa-home"></i><?php } ?><?php echo $breadcrumb['text']; ?></a></li>
                <?php $i++; } ?>
            </ul>
        </div>
        <?php foreach ($all_news as $news) { ?>
            <div class="col-md-6">
                    <div class="recent-post alt">
                        <div class="media">
                            <a class="media-link" href="<?php echo $news['view']; ?>">
                                <img src="<?php echo $news['image']; ?>" alt="<?php echo $news['title']; ?>" title="<?php echo $news['title']; ?>" class="img-thumbnail" />
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="<?php echo $news['view']; ?>"><?php echo $news['title']; ?></a></h4>
                                <div class="media-excerpt">
                                    <p><span><?php echo $news['description']; ?></span></p>
                                </div>
                                <span class="date">(<?php echo $news['date_added']; ?>)</span>

                            </div>
                        </div>
                    </div>  
            </div>
        <?php }?>
    </div>
</div>
<?php echo $footer; ?> 