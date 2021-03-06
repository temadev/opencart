<?php echo $header; ?>
<div id="content" class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="page-header">
    <div class="pull-left">
      <h1><i class="fa fa-edit"></i> <?php echo $heading_title; ?></h1>
    </div>
    <div class="pull-right">
        <button type="submit" form="form-language" class="btn btn-success btn-sm"><i class="fa fa-check"></i> <?php echo $button_save; ?></button>
        <a href="<?php echo $cancel; ?>" class="btn btn-danger btn-sm"><i class="fa fa-times"></i> <?php echo $button_cancel; ?></a>
    </div>
    <div class="clearfix"></div>
  </div>

      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language" class="form-horizontal">
        <div class="form-group required">
          <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
          <div class="col-sm-10">
            <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control input-sm" />
            <?php if ($error_name) { ?>
            <div class="text-danger"><?php echo $error_name; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-sm-2 control-label" for="input-code"><?php echo $entry_code; ?></label>
          <div class="col-sm-10">
            <input type="text" name="code" value="<?php echo $code; ?>" id="input-code" class="form-control input-sm" />
            <?php if ($error_code) { ?>
            <div class="text-danger"><?php echo $error_code; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label required" for="input-locale"><?php echo $entry_locale; ?></label>
          <div class="col-sm-10">
            <input type="text" name="locale" value="<?php echo $locale; ?>" id="input-locale" class="form-control input-sm" />
            <?php if ($error_locale) { ?>
            <div class="text-danger"><?php echo $error_locale; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
          <div class="col-sm-10">
            <input type="text" name="image" value="<?php echo $image; ?>" id="input-image" class="form-control input-sm" />
            <?php if ($error_image) { ?>
            <div class="text-danger"><?php echo $error_image; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-sm-2 control-label" for="input-directory"><?php echo $entry_directory; ?></label>
          <div class="col-sm-10">
            <input type="text" name="directory" value="<?php echo $directory; ?>" id="input-directory" class="form-control input-sm" />
            <?php if ($error_directory) { ?>
            <div class="text-danger"><?php echo $error_directory; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group required">
          <label class="col-sm-2 control-label" for="input-filename"><?php echo $entry_filename; ?></label>
          <div class="col-sm-10">
            <input type="text" name="filename" value="<?php echo $filename; ?>" id="input-filename" class="form-control input-sm" />
            <?php if ($error_filename) { ?>
            <div class="text-danger"><?php echo $error_filename; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
          <div class="col-sm-10">
		<div class="btn-group btn-group-sm" data-toggle="buttons">

  			<label class="btn btn-default<?php if ($status == 1) { ?> active<?php } ?>">
    				<i class="fa fa-check"></i> <input type="radio" name="status" value="1" <?php if ($status == 1) { ?>checked="checked"<?php } ?>> <?php echo $text_enabled; ?>
  			</label>
  			<label class="btn btn-default<?php if ($status == 0) { ?> active<?php } ?>">
    				<i class="fa fa-times"></i> <input type="radio" name="status" value="0" <?php if ($status == 0) { ?>checked="checked"<?php } ?>> <?php echo $text_disabled; ?>
  			</label>
		</div>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
          <div class="col-sm-10">
            <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" id="input-sort-order" class="form-control input-sm" />
          </div>
        </div>
      </form>

</div>
<?php echo $footer; ?>