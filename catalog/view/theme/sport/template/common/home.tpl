<?php echo $header; ?>
<div class="container">
    <div class="row">
      <?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <?php echo $content_top; ?>
        <div class="col-md-3">
            <?php echo $column_right; ?>
        </div>
        <?php echo $content_bottom; ?>
        
    </div>
</div>
<?php echo $footer; ?>