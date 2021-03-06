<?php echo $header; ?>
<div id="content" class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger">
    <i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="page-header">
    <div class="pull-left">
      <h1><i class="fa fa-edit"></i> <?php echo $heading_title; ?></h1>
    </div>
    <div class="pull-right">
      <button type="submit" form="form-product" class="btn btn-success btn-sm"><i class="fa fa-check"></i> <?php echo $button_save; ?></button>
      <a href="<?php echo $cancel; ?>" class="btn btn-danger btn-sm"><i class="fa fa-times"></i> <?php echo $button_cancel; ?></a>
    </div>
    <div class="clearfix"></div>
  </div>

  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
      <li><a href="#tab-data" data-toggle="tab"><?php echo $tab_data; ?></a></li>
      <li><a href="#tab-links" data-toggle="tab"><?php echo $tab_links; ?></a></li>
      <li><a href="#tab-attribute" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
      <li><a href="#tab-option" data-toggle="tab"><?php echo $tab_option; ?></a></li>
      <li><a href="#tab-discount" data-toggle="tab"><?php echo $tab_discount; ?></a></li>
      <li><a href="#tab-special" data-toggle="tab"><?php echo $tab_special; ?></a></li>
      <li><a href="#tab-image" data-toggle="tab"><?php echo $tab_image; ?></a></li>
      <li><a href="#tab-reward" data-toggle="tab"><?php echo $tab_reward; ?></a></li>
      <li><a href="#tab-design" data-toggle="tab"><?php echo $tab_design; ?></a></li>
    </ul>
    <div class="tab-content">
      <div class="tab-pane active" id="tab-general">
        <ul class="nav nav-tabs" id="language">
          <?php foreach ($languages as $language) { ?>
          <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>"> <?php echo $language['name']; ?></a></li>
          <?php } ?>
        </ul>
        <div class="tab-content">
          <?php foreach ($languages as $language) { ?>
          <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
            <div class="form-group required">
              <label class="col-sm-2 control-label" for="input-name<?php echo $language['language_id']; ?>"><?php echo $entry_name; ?></label>
              <div class="col-sm-10">
                <input type="text" name="product_description[<?php echo $language['language_id']; ?>][name]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['name'] : ''; ?>" id="input-name<?php echo $language['language_id']; ?>" class="form-control input-sm">
                <?php if (isset($error_name[$language['language_id']])) { ?>
                <div class="text-danger"><?php echo $error_name[$language['language_id']]; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-meta-description<?php echo $language['language_id']; ?>"><?php echo $entry_meta_description; ?></label>
              <div class="col-sm-10">
                <textarea name="product_description[<?php echo $language['language_id']; ?>][meta_description]" rows="5" id="input-meta-description<?php echo $language['language_id']; ?>" class="form-control input-sm"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-meta-keyword<?php echo $language['language_id']; ?>"><?php echo $entry_meta_keyword; ?></label>
              <div class="col-sm-10">
                <input type="text" name="product_description[<?php echo $language['language_id']; ?>][meta_keyword]" rows="5" id="input-meta-keyword<?php echo $language['language_id']; ?>" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['meta_keyword'] : ''; ?>" class="form-control input-sm">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
              <div class="col-sm-10">
                <textarea name="product_description[<?php echo $language['language_id']; ?>][description]" id="input-description<?php echo $language['language_id']; ?>"><?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['description'] : ''; ?></textarea>
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="input-tag<?php echo $language['language_id']; ?>"><?php echo $entry_tag; ?> </label>
              <div class="col-sm-10">
                <input type="text" name="product_description[<?php echo $language['language_id']; ?>][tag]" value="<?php echo isset($product_description[$language['language_id']]) ? $product_description[$language['language_id']]['tag'] : ''; ?>" id="input-tag<?php echo $language['language_id']; ?>" data-role="tagsinput" class="form-control input-sm">
              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>

      <div class="tab-pane" id="tab-data">
        <div class="form-group required">
          <label class="col-sm-2 control-label" for="input-model"><?php echo $entry_model; ?></label>
          <div class="col-sm-10">
            <input type="text" name="model" value="<?php echo $model; ?>" id="input-model" class="form-control input-sm">
            <?php if ($error_model) { ?>
            <div class="text-danger"><?php echo $error_model; ?></div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-sku"><?php echo $entry_sku; ?></label>
          <div class="col-sm-10">
            <input type="text" name="sku" value="<?php echo $sku; ?>" id="input-sku" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-upc"><?php echo $entry_upc; ?></label>
          <div class="col-sm-10">
            <input type="text" name="upc" value="<?php echo $upc; ?>" id="input-upc" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-ean"><?php echo $entry_ean; ?></label>
          <div class="col-sm-10">
            <input type="text" name="ean" value="<?php echo $ean; ?>" id="input-ean" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-jan"><?php echo $entry_jan; ?></label>
          <div class="col-sm-10">
            <input type="text" name="jan" value="<?php echo $jan; ?>" id="input-jan" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-isbn"><?php echo $entry_isbn; ?></label>
          <div class="col-sm-10">
            <input type="text" name="isbn" value="<?php echo $isbn; ?>" id="input-isbn" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-mpn"><?php echo $entry_mpn; ?></label>
          <div class="col-sm-10">
            <input type="text" name="mpn" value="<?php echo $mpn; ?>" id="input-mpn" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-location"><?php echo $entry_location; ?></label>
          <div class="col-sm-10">
            <input type="text" name="location" value="<?php echo $location; ?>" id="input-location" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-price"><?php echo $entry_price; ?></label>
          <div class="col-sm-10">
            <input type="text" name="price" value="<?php echo $price; ?>" id="input-price" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-tax-class"><?php echo $entry_tax_class; ?></label>
          <div class="col-sm-10">
            <select name="tax_class_id" id="input-tax-class" class="form-control input-sm">
              <option value="0"><?php echo $text_none; ?></option>
              <?php foreach ($tax_classes as $tax_class) { ?>
              <?php if ($tax_class['tax_class_id'] == $tax_class_id) { ?>
              <option value="<?php echo $tax_class['tax_class_id']; ?>" selected="selected"><?php echo $tax_class['title']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $tax_class['tax_class_id']; ?>"><?php echo $tax_class['title']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-quantity"><?php echo $entry_quantity; ?></label>
          <div class="col-sm-10">
            <input type="text" name="quantity" value="<?php echo $quantity; ?>" id="input-quantity" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-minimum"><?php echo $entry_minimum; ?> </label>
          <div class="col-sm-10">
            <input type="text" name="minimum" value="<?php echo $minimum; ?>" id="input-minimum" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-subtract"><?php echo $entry_subtract; ?></label>
          <div class="col-sm-10">
            <div class="btn-group btn-group-sm" data-toggle="buttons">
              <label class="btn btn-default<?php if ($subtract == 1) { ?> active<?php } ?>">
                <i class="fa fa-check"></i> <input type="radio" name="subtract" id="input-status" value="1" <?php if ($status == 1) { ?>checked<?php } ?>> <?php echo $text_enabled; ?>
              </label>
              <label class="btn btn-default<?php if ($subtract == 0) { ?> active<?php } ?>">
                <i class="fa fa-times"></i> <input type="radio" name="subtract" id="input-status" value="0" <?php if ($status == 0) { ?>checked<?php } ?>> <?php echo $text_disabled; ?>
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-stock-status"><?php echo $entry_stock_status; ?></label>
          <div class="col-sm-10">
            <select name="stock_status_id" id="input-stock-status" class="form-control input-sm">
              <?php foreach ($stock_statuses as $stock_status) { ?>
              <?php if ($stock_status['stock_status_id'] == $stock_status_id) { ?>
              <option value="<?php echo $stock_status['stock_status_id']; ?>" selected="selected"><?php echo $stock_status['name']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $stock_status['stock_status_id']; ?>"><?php echo $stock_status['name']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label"><?php echo $entry_shipping; ?></label>
          <div class="col-sm-10">
            <div class="btn-group btn-group-sm" data-toggle="buttons">
              <label class="btn btn-default<?php if ($shipping == 1) { ?> active<?php } ?>">
                <i class="fa fa-check"></i> <input type="radio" name="shipping" id="input-status" value="1" <?php if ($shipping == 1) { ?>checked<?php } ?>> <?php echo $text_yes; ?>
              </label>
              <label class="btn btn-default<?php if ($shipping == 0) { ?> active<?php } ?>">
                <i class="fa fa-times"></i> <input type="radio" name="shipping" id="input-status" value="0" <?php if ($shipping == 0) { ?>checked<?php } ?>> <?php echo $text_no; ?>
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-keyword"><?php echo $entry_keyword; ?></label>
          <div class="col-sm-10">
            
			<?php foreach ($languages as $language) { ?>
			<input type="text" name="keyword[<?php echo $language['language_id']; ?>]" value="<?php if (isset($keyword[$language['language_id']])) { echo $keyword[$language['language_id']]; } ?>" id="keyword-<?php echo $language['language_id']; ?>" class="form-control input-sm">
			<img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>"><br>
			<?php } ?>
			
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-image"><?php echo $entry_image; ?></label>
          <div class="col-sm-10"><img src="<?php echo $thumb; ?>" alt="" class="img-thumbnail" id="thumb">
            <input type="hidden" name="image" value="<?php echo $image; ?>" id="image">
            <div class="btn-group btn-group-sm">
              <button onclick="image_upload('image', 'thumb');" class="btn btn-primary" title="<?php echo $text_browse; ?>" data-toggle="modal" data-target="#dialog"><span class="fa fa-pencil"></span> <?php echo $text_browse; ?></button>
              <button type="button" onclick="$(this).parent().parent().find('img').attr('src', '<?php echo $no_image; ?>'); $(this).parent().parent().find('input').attr('value', '');return false;" class="btn btn-default btn-sm"><span class="fa fa-trash-o"></span> <?php echo $text_clear; ?></button>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-available"><?php echo $entry_date_available; ?></label>
          <div class="col-sm-10">
            <input type="date" name="date_available" value="<?php echo $date_available; ?>" id="input-available" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-length"><?php echo $entry_dimension; ?></label>
          <div class="col-sm-10">
            <div class="row">
              <div class="col-sm-4">
                <input type="text" name="length" value="<?php echo $length; ?>" id="input-length" class="form-control input-sm">
              </div>
              <div class="col-sm-4">
                <input type="text" name="width" value="<?php echo $width; ?>" id="input-width" class="form-control input-sm">
              </div>
              <div class="col-sm-4">
                <input type="text" name="height" value="<?php echo $height; ?>" id="input-height" class="form-control input-sm">
              </div>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-length-class"><?php echo $entry_length; ?></label>
          <div class="col-sm-10">
            <select name="length_class_id" id="input-length-class" class="form-control input-sm">
              <?php foreach ($length_classes as $length_class) { ?>
              <?php if ($length_class['length_class_id'] == $length_class_id) { ?>
              <option value="<?php echo $length_class['length_class_id']; ?>" selected="selected"><?php echo $length_class['title']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $length_class['length_class_id']; ?>"><?php echo $length_class['title']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-weight"><?php echo $entry_weight; ?></label>
          <div class="col-sm-10">
            <input type="text" name="weight" value="<?php echo $weight; ?>" id="input-weight" class="form-control input-sm">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-weight-class"><?php echo $entry_weight_class; ?></label>
          <div class="col-sm-10">
            <select name="weight_class_id" id="input-weight-class" class="form-control input-sm">
              <?php foreach ($weight_classes as $weight_class) { ?>
              <?php if ($weight_class['weight_class_id'] == $weight_class_id) { ?>
              <option value="<?php echo $weight_class['weight_class_id']; ?>" selected="selected"><?php echo $weight_class['title']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $weight_class['weight_class_id']; ?>"><?php echo $weight_class['title']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
          <div class="col-sm-10">
            <div class="btn-group btn-group-sm" data-toggle="buttons">
              <label class="btn btn-default<?php if ($status == 1) { ?> active<?php } ?>">
                <i class="fa fa-check"></i> <input type="radio" name="status" id="input-status" value="1" <?php if ($status == 1) { ?>checked<?php } ?>> <?php echo $text_enabled; ?>
              </label>
              <label class="btn btn-default<?php if ($status == 0) { ?> active<?php } ?>">
                <i class="fa fa-times"></i> <input type="radio" name="status" id="input-status" value="0" <?php if ($status == 0) { ?>checked<?php } ?>> <?php echo $text_disabled; ?>
              </label>
            </div>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-sort-order"><?php echo $entry_sort_order; ?></label>
          <div class="col-sm-10">
            <input type="text" name="sort_order" value="<?php echo $sort_order; ?>" id="input-sort-order" class="form-control input-sm">
          </div>
        </div>
      </div>

      <div class="tab-pane" id="tab-links">
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-manufacturer"><?php echo $entry_manufacturer; ?></label>
          <div class="col-sm-10">
            <input type="text" name="manufacturer" value="<?php echo $manufacturer ?>" id="input-manufacturer" class="form-control input-sm">
            <input type="hidden" name="manufacturer_id" value="<?php echo $manufacturer_id; ?>">
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-category"><?php echo $entry_category; ?></label>
          <div class="col-sm-10">
            <input type="text" name="category" value="" id="input-category" class="form-control input-sm">
            <ul id="product-category" class="list-unstyled">
              <?php foreach ($product_categories as $product_category) { ?>
              <li id="product-category<?php echo $product_category['category_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_category['name']; ?>
                <input type="hidden" name="product_category[]" value="<?php echo $product_category['category_id']; ?>">
              </li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-filter"><?php echo $entry_filter; ?></label>
          <div class="col-sm-10">
            <input type="text" name="filter" value="" id="input-filter" class="form-control input-sm">
            <ul id="product-filter" class="list-unstyled">
              <?php foreach ($product_filters as $product_filter) { ?>
              <li id="product-filter<?php echo $product_filter['filter_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_filter['name']; ?>
                <input type="hidden" name="product_filter[]" value="<?php echo $product_filter['filter_id']; ?>">
              </li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label"><?php echo $entry_store; ?></label>
          <div class="col-sm-10">
            <div class="checkbox">
              <label>
                <?php if (in_array(0, $product_store)) { ?>
                <input type="checkbox" name="product_store[]" value="0" checked="checked">
                <?php echo $text_default; ?>
                <?php } else { ?>
                <input type="checkbox" name="product_store[]" value="0">
                <?php echo $text_default; ?>
                <?php } ?>
              </label>
            </div>
            <?php foreach ($stores as $store) { ?>
            <div class="checkbox">
              <label>
                <?php if (in_array($store['store_id'], $product_store)) { ?>
                <input type="checkbox" name="product_store[]" value="<?php echo $store['store_id']; ?>" checked="checked">
                <?php echo $store['name']; ?>
                <?php } else { ?>
                <input type="checkbox" name="product_store[]" value="<?php echo $store['store_id']; ?>">
                <?php echo $store['name']; ?>
                <?php } ?>
              </label>
            </div>
            <?php } ?>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-download"><?php echo $entry_download; ?> </label>
          <div class="col-sm-10">
            <input type="text" name="download" value="" id="input-download" class="form-control input-sm">
            <ul id="product-download" class="list-unstyled">
              <?php foreach ($product_downloads as $product_download) { ?>
              <li id="product-download<?php echo $product_download['download_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_download['name']; ?>
                <input type="hidden" name="product_download[]" value="<?php echo $product_download['download_id']; ?>">
              </li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <div class="form-group">
          <label class="col-sm-2 control-label" for="input-related"><?php echo $entry_related; ?> </label>
          <div class="col-sm-10">
            <input type="text" name="related" value="" id="input-related" class="form-control input-sm">
            <ul id="product-related" class="list-unstyled">
              <?php foreach ($product_related as $product_related) { ?>
              <li id="product-related<?php echo $product_related['product_id']; ?>"><i class="fa fa-minus-circle"></i> <?php echo $product_related['name']; ?>
                <input type="hidden" name="product_related[]" value="<?php echo $product_related['product_id']; ?>">
              </li>
              <?php } ?>
            </ul>
          </div>
        </div>
      </div>

      <div class="tab-pane" id="tab-attribute">
        <div class="table-responsive">
          <table id="attribute" class="table table-hover">
            <thead>
              <tr>
                <td><?php echo $entry_attribute; ?></td>
                <td><?php echo $entry_text; ?></td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              <?php $attribute_row = 0; ?>
              <?php foreach ($product_attributes as $product_attribute) { ?>
              <tr id="attribute-row<?php echo $attribute_row; ?>">
                <td>
                  <input type="text" name="product_attribute[<?php echo $attribute_row; ?>][name]" value="<?php echo $product_attribute['name']; ?>" class="form-control input-sm">
                  <input type="hidden" name="product_attribute[<?php echo $attribute_row; ?>][attribute_id]" value="<?php echo $product_attribute['attribute_id']; ?>">
                </td>
                <td>
                  <?php foreach ($languages as $language) { ?>
                  <div class="input-group">
                    <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>"></span>
                    <textarea name="product_attribute[<?php echo $attribute_row; ?>][product_attribute_description][<?php echo $language['language_id']; ?>][text]" rows="5" class="form-control input-sm"><?php echo isset($product_attribute['product_attribute_description'][$language['language_id']]) ? $product_attribute['product_attribute_description'][$language['language_id']]['text'] : ''; ?></textarea>
                  </div>
                  <?php } ?>
                </td>
                <td><button type="button" onclick="$('#attribute-row<?php echo $attribute_row; ?>').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>
              </tr>
              <?php $attribute_row++; ?>
              <?php } ?>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="2"></td>
                <td><button type="button" onclick="addAttribute();" class="btn btn-primary btn-sm"><i class="fa fa-plus-circle"></i> <?php echo $button_add_attribute; ?></button></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>

      <div class="tab-pane" id="tab-option">
        <div class="row">
          <div class="col-sm-2">
            <ul class="nav nav-pills nav-stacked" id="option">
              <?php $option_row = 0; ?>
              <?php foreach ($product_options as $product_option) { ?>
              <li><a href="#tab-option<?php echo $option_row; ?>" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$('a[href=\'#tab-option<?php echo $option_row; ?>\']').parent().remove(); $('#tab-option<?php echo $option_row; ?>').remove(); $('#option a:first').tab('show');"></i> <?php echo $product_option['name']; ?></a></li>
              <?php $option_row++; ?>
              <?php } ?>
              <li>
                <input type="text" name="option" value="" id="input-option" class="form-control input-sm">
              </li>
            </ul>
          </div>
          <div class="col-sm-10">
            <div class="tab-content">
              <?php $option_row = 0; ?>
              <?php $option_value_row = 0; ?>
              <?php foreach ($product_options as $product_option) { ?>
              <div class="tab-pane" id="tab-option<?php echo $option_row; ?>">
                <input type="hidden" name="product_option[<?php echo $option_row; ?>][product_option_id]" value="<?php echo $product_option['product_option_id']; ?>">
                <input type="hidden" name="product_option[<?php echo $option_row; ?>][name]" value="<?php echo $product_option['name']; ?>">
                <input type="hidden" name="product_option[<?php echo $option_row; ?>][option_id]" value="<?php echo $product_option['option_id']; ?>">
                <input type="hidden" name="product_option[<?php echo $option_row; ?>][type]" value="<?php echo $product_option['type']; ?>">
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-required<?php echo $option_row; ?>"><?php echo $entry_required; ?></label>
                  <div class="col-sm-10">
                    <div class="btn-group btn-group-sm" data-toggle="buttons">
                      <label class="btn btn-warning<?php if ($product_option['required'] == 1) { ?> active<?php } ?>">
                        <i class="fa fa-check"></i> <input type="radio" name="product_option[<?php echo $option_row; ?>][required]" id="input-required<?php echo $option_row; ?>" value="1" <?php if ($product_option['required'] == 1) { ?>checked<?php } ?>> <?php echo $text_yes; ?>
                      </label>
                      <label class="btn btn-warning<?php if ($product_option['required'] == 0) { ?> active<?php } ?>">
                        <i class="fa fa-times"></i> <input type="radio" name="product_option[<?php echo $option_row; ?>][required]" id="input-required<?php echo $option_row; ?>" value="0" <?php if ($product_option['required'] == 0) { ?>checked<?php } ?>> <?php echo $text_no; ?>
                      </label>
                    </div>
                  </div>
                </div>
                <?php if ($product_option['type'] == 'text') { ?>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="product_option[<?php echo $option_row; ?>][option_value]" value="<?php echo $product_option['option_value']; ?>" id="input-value<?php echo $option_row; ?>" class="form-control input-sm">
                  </div>
                </div>
                <?php } ?>
                <?php if ($product_option['type'] == 'textarea') { ?>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                  <div class="col-sm-10">
                    <textarea name="product_option[<?php echo $option_row; ?>][option_value]" rows="5" id="input-value<?php echo $option_row; ?>" class="form-control input-sm"><?php echo $product_option['option_value']; ?></textarea>
                  </div>
                </div>
                <?php } ?>
                <?php if ($product_option['type'] == 'file') { ?>
                <div class="form-group" style="display: none;">
                  <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                  <div class="col-sm-10">
                    <input type="text" name="product_option[<?php echo $option_row; ?>][option_value]" value="<?php echo $product_option['option_value']; ?>" id="input-value<?php echo $option_row; ?>" class="form-control input-sm">
                  </div>
                </div>
                <?php } ?>
                <?php if ($product_option['type'] == 'date') { ?>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                  <div class="col-sm-10">
                    <input type="date" name="product_option[<?php echo $option_row; ?>][option_value]" value="<?php echo $product_option['option_value']; ?>" id="input-value<?php echo $option_row; ?>" class="form-control input-sm">
                  </div>
                </div>
                <?php } ?>
                <?php if ($product_option['type'] == 'datetime') { ?>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                  <div class="col-sm-10">
                    <input type="datetime-local" name="product_option[<?php echo $option_row; ?>][option_value]" value="<?php echo $product_option['option_value']; ?>" id="input-value<?php echo $option_row; ?>" class="form-control input-sm">
                  </div>
                </div>
                <?php } ?>
                <?php if ($product_option['type'] == 'time') { ?>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-value<?php echo $option_row; ?>"><?php echo $entry_option_value; ?></label>
                  <div class="col-sm-10">
                    <input type="time" name="product_option[<?php echo $option_row; ?>][option_value]" value="<?php echo $product_option['option_value']; ?>" id="input-value<?php echo $option_row; ?>" class="form-control input-sm">
                  </div>
                </div>
                <?php } ?>
                <?php if ($product_option['type'] == 'select' || $product_option['type'] == 'radio' || $product_option['type'] == 'checkbox' || $product_option['type'] == 'image') { ?>
                <div class="table-responsive">
                  <table id="option-value<?php echo $option_row; ?>" class="table table-hover">
                    <thead>
                      <tr>
                        <td><?php echo $entry_option_value; ?></td>
                        <td class="text-right"><?php echo $entry_quantity; ?></td>
                        <td><?php echo $entry_subtract; ?></td>
                        <td class="text-right"><?php echo $entry_price; ?></td>
                        <td class="text-right"><?php echo $entry_option_points; ?></td>
                        <td class="text-right"><?php echo $entry_weight; ?></td>
                        <td></td>
                      </tr>
                    </thead>
                    <tbody>
                      <?php foreach ($product_option['product_option_value'] as $product_option_value) { ?>
                      <tr id="option-value-row<?php echo $option_value_row; ?>">
                        <td><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][option_value_id]" class="form-control input-sm">
                          <?php if (isset($option_values[$product_option['option_id']])) { ?>
                          <?php foreach ($option_values[$product_option['option_id']] as $option_value) { ?>
                          <?php if ($option_value['option_value_id'] == $product_option_value['option_value_id']) { ?>
                          <option value="<?php echo $option_value['option_value_id']; ?>" selected="selected"><?php echo $option_value['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?></option>
                          <?php } ?>
                          <?php } ?>
                          <?php } ?>
                        </select>
                        <input type="hidden" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][product_option_value_id]" value="<?php echo $product_option_value['product_option_value_id']; ?>"></td>
                        <td class="text-right"><input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][quantity]" value="<?php echo $product_option_value['quantity']; ?>" class="form-control input-sm"></td>
                        <td><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][subtract]" class="form-control input-sm">
                          <?php if ($product_option_value['subtract']) { ?>
                          <option value="1" selected="selected"><?php echo $text_yes; ?></option>
                          <option value="0"><?php echo $text_no; ?></option>
                          <?php } else { ?>
                          <option value="1"><?php echo $text_yes; ?></option>
                          <option value="0" selected="selected"><?php echo $text_no; ?></option>
                          <?php } ?>
                        </select></td>
                        <td class="text-right"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][price_prefix]" class="form-control input-sm">
                          <?php if ($product_option_value['price_prefix'] == '+') { ?>
                          <option value="+" selected="selected">+</option>
                          <?php } else { ?>
                          <option value="+">+</option>
                          <?php } ?>
                          <?php if ($product_option_value['price_prefix'] == '-') { ?>
                          <option value="-" selected="selected">-</option>
                          <?php } else { ?>
                          <option value="-">-</option>
                          <?php } ?>
                        </select>
                        <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][price]" value="<?php echo $product_option_value['price']; ?>" class="form-control input-sm"></td>
                        <td class="text-right"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][points_prefix]" class="form-control input-sm">
                          <?php if ($product_option_value['points_prefix'] == '+') { ?>
                          <option value="+" selected="selected">+</option>
                          <?php } else { ?>
                          <option value="+">+</option>
                          <?php } ?>
                          <?php if ($product_option_value['points_prefix'] == '-') { ?>
                          <option value="-" selected="selected">-</option>
                          <?php } else { ?>
                          <option value="-">-</option>
                          <?php } ?>
                        </select>
                        <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][points]" value="<?php echo $product_option_value['points']; ?>" class="form-control input-sm"></td>
                        <td class="text-right"><select name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][weight_prefix]" class="form-control input-sm">
                          <?php if ($product_option_value['weight_prefix'] == '+') { ?>
                          <option value="+" selected="selected">+</option>
                          <?php } else { ?>
                          <option value="+">+</option>
                          <?php } ?>
                          <?php if ($product_option_value['weight_prefix'] == '-') { ?>
                          <option value="-" selected="selected">-</option>
                          <?php } else { ?>
                          <option value="-">-</option>
                          <?php } ?>
                        </select>
                        <input type="text" name="product_option[<?php echo $option_row; ?>][product_option_value][<?php echo $option_value_row; ?>][weight]" value="<?php echo $product_option_value['weight']; ?>" class="form-control input-sm"></td>
                        <td><button type="button" onclick="$('#option-value-row<?php echo $option_value_row; ?>').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>
                      </tr>
                      <?php $option_value_row++; ?>
                      <?php } ?>
                    </tbody>
                    <tfoot>
                      <tr>
                        <td colspan="6"></td>
                        <td><button type="button" onclick="addOptionValue('<?php echo $option_row; ?>');" class="btn btn-primary btn-sm"><i class="fa fa-plus-circle"></i> <?php echo $button_add_option_value; ?></button></td>
                      </tr>
                    </tfoot>
                  </table>
                </div>
                <select id="option-values<?php echo $option_row; ?>" style="display: none;">
                  <?php if (isset($option_values[$product_option['option_id']])) { ?>
                  <?php foreach ($option_values[$product_option['option_id']] as $option_value) { ?>
                  <option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select>
                <?php } ?>
              </div>
              <?php $option_row++; ?>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>

      <div class="tab-pane" id="tab-discount">
        <div class="table-responsive">
          <table id="discount" class="table table-hover">
            <thead>
              <tr>
                <td><?php echo $entry_customer_group; ?></td>
                <td class="text-right"><?php echo $entry_quantity; ?></td>
                <td class="text-right"><?php echo $entry_priority; ?></td>
                <td class="text-right"><?php echo $entry_price; ?></td>
                <td><?php echo $entry_date_start; ?></td>
                <td><?php echo $entry_date_end; ?></td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              <?php $discount_row = 0; ?>
              <?php foreach ($product_discounts as $product_discount) { ?>
              <tr id="discount-row<?php echo $discount_row; ?>">
                <td><select name="product_discount[<?php echo $discount_row; ?>][customer_group_id]" class="form-control input-sm">
                  <?php foreach ($customer_groups as $customer_group) { ?>
                  <?php if ($customer_group['customer_group_id'] == $product_discount['customer_group_id']) { ?>
                  <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
                <td class="text-right"><input type="text" name="product_discount[<?php echo $discount_row; ?>][quantity]" value="<?php echo $product_discount['quantity']; ?>" class="form-control input-sm"></td>
                <td class="text-right"><input type="text" name="product_discount[<?php echo $discount_row; ?>][priority]" value="<?php echo $product_discount['priority']; ?>" class="form-control input-sm"></td>
                <td class="text-right"><input type="text" name="product_discount[<?php echo $discount_row; ?>][price]" value="<?php echo $product_discount['price']; ?>" class="form-control input-sm"></td>
                <td><input type="date" name="product_discount[<?php echo $discount_row; ?>][date_start]" value="<?php echo $product_discount['date_start']; ?>" class="form-control input-sm"></td>
                <td><input type="date" name="product_discount[<?php echo $discount_row; ?>][date_end]" value="<?php echo $product_discount['date_end']; ?>"  class="form-control input-sm"></td>
                <td><button type="button" onclick="$('#discount-row<?php echo $discount_row; ?>').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>
              </tr>
              <?php $discount_row++; ?>
              <?php } ?>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="6"></td>
                <td><button type="button" onclick="addDiscount();" class="btn btn-primary btn-sm"><i class="fa fa-plus-circle"></i> <?php echo $button_add_discount; ?></button></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>

      <div class="tab-pane" id="tab-special">
        <div class="table-responsive">
          <table id="special" class="table table-hover">
            <thead>
              <tr>
                <td><?php echo $entry_customer_group; ?></td>
                <td class="text-right"><?php echo $entry_priority; ?></td>
                <td class="text-right"><?php echo $entry_price; ?></td>
                <td><?php echo $entry_date_start; ?></td>
                <td><?php echo $entry_date_end; ?></td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              <?php $special_row = 0; ?>
              <?php foreach ($product_specials as $product_special) { ?>
              <tr id="special-row<?php echo $special_row; ?>">
                <td><select name="product_special[<?php echo $special_row; ?>][customer_group_id]" class="form-control input-sm">
                  <?php foreach ($customer_groups as $customer_group) { ?>
                  <?php if ($customer_group['customer_group_id'] == $product_special['customer_group_id']) { ?>
                  <option value="<?php echo $customer_group['customer_group_id']; ?>" selected="selected"><?php echo $customer_group['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
                <td class="text-right"><input type="text" name="product_special[<?php echo $special_row; ?>][priority]" value="<?php echo $product_special['priority']; ?>" class="form-control input-sm"></td>
                <td class="text-right"><input type="text" name="product_special[<?php echo $special_row; ?>][price]" value="<?php echo $product_special['price']; ?>" class="form-control input-sm"></td>
                <td><input type="date" name="product_special[<?php echo $special_row; ?>][date_start]" value="<?php echo $product_special['date_start']; ?>" class="form-control input-sm"></td>
                <td><input type="date" name="product_special[<?php echo $special_row; ?>][date_end]" value="<?php echo $product_special['date_end']; ?>" class="form-control input-sm"></td>
                <td><button type="button" onclick="$('#special-row<?php echo $special_row; ?>').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>
              </tr>
              <?php $special_row++; ?>
              <?php } ?>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="5"></td>
                <td><button type="button" onclick="addSpecial();" class="btn btn-primary btn-sm"><i class="fa fa-plus-circle"></i> <?php echo $button_add_special; ?></button></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>

      <div class="tab-pane" id="tab-image">
        <div class="table-responsive">
          <table id="images" class="table table-hover">
            <thead>
              <tr>
                <td class="text-left width-10"><?php echo $entry_image; ?></td>
                <td></td>
                <td class="text-right width-10"><?php echo $entry_sort_order; ?></td>
                <td></td>
              </tr>
            </thead>
            <tbody>
              <?php $image_row = 0; ?>
              <?php foreach ($product_images as $product_image) { ?>
              <tr id="image-row<?php echo $image_row; ?>">
                <td>
                  <img src="<?php echo $product_image['thumb']; ?>" alt="" class="img-thumbnail" id="thumb<?php echo $image_row; ?>">
                  <input type="hidden" name="product_image[<?php echo $image_row; ?>][image]" value="<?php echo $product_image['image']; ?>" id="image<?php echo $image_row; ?>">
                </td>
                <td>
                  <div class="btn-group btn-group-sm">
                    <button type="button" onclick="image_upload('image<?php echo $image_row; ?>', 'thumb<?php echo $image_row; ?>');" data-toggle="modal" data-target="#dialog" class="btn btn-primary"><span class="fa fa-pencil"></span> <?php echo $text_browse; ?></button>
                    <button type="button" onclick="$('#thumb<?php echo $image_row; ?>').attr('src', '<?php echo $no_image; ?>'); $('#image<?php echo $image_row; ?>').attr('value', '');return false;" class="btn btn-default btn-sm"><span class="fa fa-trash-o"></span> <?php echo $text_clear; ?></button>
                  </div>
                </td>
                <td class="text-right"><input type="text" name="product_image[<?php echo $image_row; ?>][sort_order]" value="<?php echo $product_image['sort_order']; ?>" class="form-control input-sm"></td>
                <td><button type="button" onclick="$('#image-row<?php echo $image_row; ?>').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>
              </tr>
              <?php $image_row++; ?>
              <?php } ?>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="3"></td>
                <td><button type="button" onclick="addImage();" class="btn btn-primary btn-sm"><i class="fa fa-plus-circle"></i> <?php echo $button_add_image; ?></button></td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>

      <div class="tab-pane" id="tab-reward">
        <div class="form-group">
          <label class="col-lg-2 control-label" for="input-points"><?php echo $entry_points; ?></label>
          <div class="col-lg-10">
            <input type="text" name="points" value="<?php echo $points; ?>" id="input-points" class="form-control input-sm">
          </div>
        </div>
        <div class="table-responsive">
          <table class="table table-hover">
            <thead>
              <tr>
                <td><?php echo $entry_customer_group; ?></td>
                <td class="text-right"><?php echo $entry_reward; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($customer_groups as $customer_group) { ?>
              <tr>
                <td><?php echo $customer_group['name']; ?></td>
                <td class="text-right"><input type="text" name="product_reward[<?php echo $customer_group['customer_group_id']; ?>][points]" value="<?php echo isset($product_reward[$customer_group['customer_group_id']]) ? $product_reward[$customer_group['customer_group_id']]['points'] : ''; ?>" class="form-control input-sm"></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>

      <div class="tab-pane" id="tab-design">
        <div class="table-responsive">
          <table class="table table-hover">
            <thead>
              <tr>
                <td><?php echo $entry_store; ?></td>
                <td><?php echo $entry_layout; ?></td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><?php echo $text_default; ?></td>
                <td>
                  <select name="product_layout[0][layout_id]" class="form-control input-sm">
                    <option value=""></option>
                    <?php foreach ($layouts as $layout) { ?>
                    <?php if (isset($product_layout[0]) && $product_layout[0] == $layout['layout_id']) { ?>
                    <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                  </select>
                </td>
              </tr>
              <?php foreach ($stores as $store) { ?>
              <tr>
                <td><?php echo $store['name']; ?></td>
                <td><select name="product_layout[<?php echo $store['store_id']; ?>][layout_id]" class="form-control input-sm">
                  <option value=""></option>
                  <?php foreach ($layouts as $layout) { ?>
                  <?php if (isset($product_layout[$store['store_id']]) && $product_layout[$store['store_id']] == $layout['layout_id']) { ?>
                  <option value="<?php echo $layout['layout_id']; ?>" selected="selected"><?php echo $layout['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $layout['layout_id']; ?>"><?php echo $layout['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </form>
</div>
<link rel="stylesheet" href="view/javascript/bootstrap-tagsinput/bootstrap-tagsinput.css">
<script src="view/javascript/bootstrap-tagsinput/bootstrap-tagsinput.min.js"></script>

<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script> 
<script type="text/javascript"><!--
<?php foreach ($languages as $language) { ?>
  CKEDITOR.replace('input-description<?php echo $language['language_id']; ?>', {
    filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
    filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
    filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
    filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
    filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
    filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
  });
<?php } ?>
</script> 
<script type="text/javascript">
  // Manufacturer
  $('input[name=\'manufacturer\']').autocomplete({
    'source': function(request, response) {
      $.ajax({
        url: 'index.php?route=catalog/manufacturer/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
        dataType: 'json',
        success: function(json) {
          json.unshift({
            'manufacturer_id': 0,
            'name': '<?php echo $text_none; ?>'
          });

          response($.map(json, function(item) {
            return {
              label: item['name'],
              value: item['manufacturer_id']
            }
          }));
        }
      });
    },
    'select': function(item) {
      $('input[name=\'manufacturer\']').val(item['label']);
      $('input[name=\'manufacturer_id\']').val(item['value']);
    }
  });

  // Category
  $('input[name=\'category\']').autocomplete({
    'source': function(request, response) {
      $.ajax({
        url: 'index.php?route=catalog/category/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
        dataType: 'json',
        success: function(json) {
          response($.map(json, function(item) {
            return {
              label: item['name'],
              value: item['category_id']
            }
          }));
        }
      });
    },
    'select': function(item) {
      $('input[name=\'category\']').val('');
      $('#product-category' + item['value']).remove();
      $('#product-category').append('<div id="product-category' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_category[]" value="' + item['value'] + '"></div>');
    }
  });

  $('#product-category').delegate('.fa-minus-circle', 'click', function() {
    $(this).parent().remove();
  });

  // Filter
  $('input[name=\'filter\']').autocomplete({
    'source': function(request, response) {
      $.ajax({
        url: 'index.php?route=catalog/filter/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
        dataType: 'json',			
        success: function(json) {
          response($.map(json, function(item) {
            return {
              label: item['name'],
              value: item['filter_id']
            }
          }));
        }
      });
    },
    'select': function(item) {
      $('input[name=\'filter\']').val('');
      $('#product-filter' + item['value']).remove();
      $('#product-filter').append('<div id="product-filter' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_filter[]" value="' + item['value'] + '"></div>');	
    }	
  });

  $('#product-filter').delegate('.fa-minus-circle', 'click', function() {
    $(this).parent().remove();
  });

  // Downloads
  $('input[name=\'download\']').autocomplete({
    'source': function(request, response) {
      $.ajax({
        url: 'index.php?route=catalog/download/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
        dataType: 'json',
        success: function(json) {
          response($.map(json, function(item) {
            return {
              label: item['name'],
              value: item['download_id']
            }
          }));
        }
      });
    },
    'select': function(item) {
      $('input[name=\'download\']').val('');
      $('#product-download' + item['value']).remove();
      $('#product-download').append('<div id="product-download' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_download[]" value="' + item['value'] + '"></div>');
    }
  });

  $('#product-download').delegate('.fa-minus-circle', 'click', function() {
    $(this).parent().remove();
  });

  // Related
  $('input[name=\'related\']').autocomplete({
    'source': function(request, response) {
      $.ajax({
        url: 'index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
        dataType: 'json',			
        success: function(json) {
          response($.map(json, function(item) {
            return {
              label: item['name'],
              value: item['product_id']
            }
          }));
        }
      });
    },
    'select': function(item) {
      $('input[name=\'related\']').val('');
      $('#product-related' + item['value']).remove();
      $('#product-related').append('<div id="product-related' + item['value'] + '"><i class="fa fa-minus-circle"></i> ' + item['label'] + '<input type="hidden" name="product_related[]" value="' + item['value'] + '"></div>');
    }
  });

  $('#product-related').delegate('.fa-minus-circle', 'click', function() {
    $(this).parent().remove();
  });
</script> 
<script type="text/javascript">
  var attribute_row = <?php echo $attribute_row; ?>;

  function addAttribute() {
    html  = '<tr id="attribute-row' + attribute_row + '">';
    html += '  <td><input type="text" name="product_attribute[' + attribute_row + '][name]" value="" class="form-control input-sm"><input type="hidden" name="product_attribute[' + attribute_row + '][attribute_id]" value=""></td>';
    html += '  <td>';
    <?php foreach ($languages as $language) { ?>
    html += '<div class="input-group"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>"></span><textarea name="product_attribute[' + attribute_row + '][product_attribute_description][<?php echo $language['language_id']; ?>][text]" rows="5" class="form-control input-sm"></textarea></div>';
    <?php } ?>
    html += '  </td>';
    html += '  <td><button type="button" onclick="$(\'#attribute-row' + attribute_row + '\').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>';
    html += '</tr>';

    $('#attribute tbody').append(html);

    attributeautocomplete(attribute_row);

    attribute_row++;
  }

  function attributeautocomplete(attribute_row) {
    $('input[name=\'product_attribute[' + attribute_row + '][name]\']').autocomplete({
      'source': function(request, response) {
        $.ajax({
          url: 'index.php?route=catalog/attribute/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
          dataType: 'json',			
          success: function(json) {
            response($.map(json, function(item) {
              return {
                category: item.attribute_group,
                label: item.name,
                value: item.attribute_id
              }
            }));
          }
        });
      },
      'select': function(item) {
        $('input[name=\'product_attribute[' + attribute_row + '][name]\']').val(item['label']);
        $('input[name=\'product_attribute[' + attribute_row + '][attribute_id]\']').val(item['value']);
      }
    });
  }

  $('#attribute tbody tr').each(function(index, element) {
    attributeautocomplete(index);
  });
</script> 
<script type="text/javascript">
  var option_row = <?php echo $option_row; ?>;

  $('input[name=\'option\']').autocomplete({
    'source': function(request, response) {
      $.ajax({
        url: 'index.php?route=catalog/option/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request),
        dataType: 'json',			
        success: function(json) {
          response($.map(json, function(item) {
            return {
              category: item['category'],
              label: item['name'],
              value: item['option_id'],
              type: item['type'],
              option_value: item['option_value']
            }
          }));
        }
      });
    },
    'select': function(item) {
      html  = '<div class="tab-pane" id="tab-option' + option_row + '">';
      html += '	<input type="hidden" name="product_option[' + option_row + '][product_option_id]" value="">';
      html += '	<input type="hidden" name="product_option[' + option_row + '][name]" value="' + item['label'] + '">';
      html += '	<input type="hidden" name="product_option[' + option_row + '][option_id]" value="' + item['value'] + '">';
      html += '	<input type="hidden" name="product_option[' + option_row + '][type]" value="' + item['type'] + '">';

      html += '	<div class="form-group">';
      html += '	  <label class="col-sm-2 control-label" for="input-required' + option_row + '"><?php echo $entry_required; ?></label>';
      html += '	  <div class="col-sm-10"><div class="btn-group btn-group-sm" data-toggle="buttons">';
      html += '	      <label class="btn btn-warning"><i class="fa fa-check"></i> <input type="radio" name="product_option[' + option_row + '][required]" id="input-required' + option_row + '" id="input-status"> <?php echo $text_yes; ?></label>';
      html += '	      <label class="btn btn-warning active"><i class="fa fa-times"></i> <input type="radio" name="product_option[' + option_row + '][required]" id="input-required' + option_row + '" id="input-status" checked> <?php echo $text_no; ?></label>';
      html += '	  </div></div>';
      html += '	</div>';

      if (item['type'] == 'text') {
        html += '	<div class="form-group">';
        html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
        html += '	  <div class="col-sm-10"><input type="text" name="product_option[' + option_row + '][option_value]" value="" id="input-value' + option_row + '" class="form-control input-sm"></div>';
        html += '	</div>';
      }

      if (item['type'] == 'textarea') {
        html += '	<div class="form-group">';
        html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
        html += '	  <div class="col-sm-10"><textarea name="product_option[' + option_row + '][option_value]" rows="5" id="input-value' + option_row + '" class="form-control input-sm"></textarea></div>';
        html += '	</div>';			
      }

      if (item['type'] == 'file') {
        html += '	<div class="form-group" style="display: none;">';
        html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
        html += '	  <div class="col-sm-10"><input type="text" name="product_option[' + option_row + '][option_value]" value="" id="input-value' + option_row + '" class="form-control input-sm"></div>';
        html += '	</div>';
      }

      if (item['type'] == 'date') {
        html += '	<div class="form-group">';
        html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
        html += '	  <div class="col-sm-10"><input type="date" name="product_option[' + option_row + '][option_value]" value="" id="input-value' + option_row + '" class="form-control input-sm"></div>';
        html += '	</div>';
      }

      if (item['type'] == 'datetime') {
        html += '	<div class="form-group">';
        html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
        html += '	  <div class="col-sm-10"><input type="datetime-local" name="product_option[' + option_row + '][option_value]" value="" id="input-value' + option_row + '" class="form-control input-sm"></div>';
        html += '	</div>';
      }

      if (item['type'] == 'time') {
        html += '	<div class="form-group">';
        html += '	  <label class="col-sm-2 control-label" for="input-value' + option_row + '"><?php echo $entry_option_value; ?></label>';
        html += '	  <div class="col-sm-10"><input type="time" name="product_option[' + option_row + '][option_value]" value="" id="input-value' + option_row + '" class="form-control input-sm"></div>';
        html += '	</div>';
      }

      if (item['type'] == 'select' || item['type'] == 'radio' || item['type'] == 'checkbox' || item['type'] == 'image') {
        html += '<div class="table-responsive">';
        html += '  <table id="option-value' + option_row + '" class="table table-hover">';
        html += '  	 <thead>'; 
        html += '      <tr>';
        html += '        <td><?php echo $entry_option_value; ?></td>';
        html += '        <td class="text-right"><?php echo $entry_quantity; ?></td>';
        html += '        <td><?php echo $entry_subtract; ?></td>';
        html += '        <td class="text-right"><?php echo $entry_price; ?></td>';
        html += '        <td class="text-right"><?php echo $entry_option_points; ?></td>';
        html += '        <td class="text-right"><?php echo $entry_weight; ?></td>';
        html += '        <td></td>';
        html += '      </tr>';
        html += '  	 </thead>';
        html += '  	 <tbody>';
        html += '    </tbody>';
        html += '    <tfoot>';
        html += '      <tr>';
        html += '        <td colspan="6"></td>';
        html += '        <td><button type="button" onclick="addOptionValue(' + option_row + ');" class="btn btn-primary btn-sm"><i class="fa fa-plus-circle"></i> <?php echo $button_add_option_value; ?></button></td>';
        html += '      </tr>';
        html += '    </tfoot>';
        html += '  </table>';
        html += '</div>';

        html += '  <select id="option-values' + option_row + '" style="display: none;">';

        for (i = 0; i < item['option_value'].length; i++) {
          html += '  <option value="' + item['option_value'][i]['option_value_id'] + '">' + item['option_value'][i]['name'] + '</option>';
        }

      html += '  </select>';	
      html += '</div>';	
    }

    $('#tab-option .tab-content').append(html);

    $('#option > li:last-child').before('<li><a href="#tab-option' + option_row + '" data-toggle="tab"><i class="fa fa-minus-circle" onclick="$(\'a[href=\\\'#tab-option' + option_row + '\\\']\').parent().remove(); $(\'#tab-option' + option_row + '\').remove(); $(\'#option a:first\').tab(\'show\')"></i> ' + item['label'] + '</li>');

    $('#option a[href=\'#tab-option' + option_row + '\']').tab('show');

    option_row++;
  }	
});
</script> 
<script type="text/javascript">
  var option_value_row = <?php echo $option_value_row; ?>;

  function addOptionValue(option_row) {	
    html  = '<tr id="option-value-row' + option_value_row + '">';
    html += '  <td><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][option_value_id]" class="form-control input-sm">';
    html += $('#option-values' + option_row).html();
    html += '  </select><input type="hidden" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][product_option_value_id]" value=""></td>';
    html += '  <td class="text-right"><input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][quantity]" value=""  class="form-control input-sm"></td>'; 
    html += '  <td><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][subtract]" class="form-control input-sm">';
    html += '    <option value="1"><?php echo $text_yes; ?></option>';
    html += '    <option value="0"><?php echo $text_no; ?></option>';
    html += '  </select></td>';
    html += '  <td class="text-right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price_prefix]" class="form-control input-sm">';
    html += '    <option value="+">+</option>';
    html += '    <option value="-">-</option>';
    html += '  </select>';
    html += '  <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][price]" value="" class="form-control input-sm"></td>';
    html += '  <td class="text-right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][points_prefix]" class="form-control input-sm">';
    html += '    <option value="+">+</option>';
    html += '    <option value="-">-</option>';
    html += '  </select>';
    html += '  <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][points]" value="" class="form-control input-sm"></td>';	
    html += '  <td class="text-right"><select name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][weight_prefix]" class="form-control input-sm">';
    html += '    <option value="+">+</option>';
    html += '    <option value="-">-</option>';
    html += '  </select>';
    html += '  <input type="text" name="product_option[' + option_row + '][product_option_value][' + option_value_row + '][weight]" value="" class="form-control input-sm"></td>';
    html += '  <td><button type="button" onclick="$(\'#option-value-row' + option_value_row + '\').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>';
    html += '</tr>';

    $('#option-value' + option_row + ' tbody').append(html);

    option_value_row++;
  }
</script> 
<script type="text/javascript">
  var discount_row = <?php echo $discount_row; ?>;

  function addDiscount() {
    html  = '<tr id="discount-row' + discount_row + '">'; 
    html += '  <td><select name="product_discount[' + discount_row + '][customer_group_id]" class="form-control input-sm">';
    <?php foreach ($customer_groups as $customer_group) { ?>
    html += '    <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>';
    <?php } ?>
    html += '  </select></td>';		
    html += '  <td class="text-right"><input type="text" name="product_discount[' + discount_row + '][quantity]" value="" class="form-control input-sm"></td>';
    html += '  <td class="text-right"><input type="text" name="product_discount[' + discount_row + '][priority]" value="" class="form-control input-sm"></td>';
    html += '  <td class="text-right"><input type="text" name="product_discount[' + discount_row + '][price]" value="" class="form-control input-sm"></td>';
    html += '  <td><input type="date" name="product_discount[' + discount_row + '][date_start]" value="" class="form-control input-sm"></td>';
    html += '  <td><input type="date" name="product_discount[' + discount_row + '][date_end]" value="" class="form-control input-sm"></td>';
    html += '  <td><button type="button" onclick="$(\'#discount-row' + discount_row + '\').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>';
    html += '</tr>';	

    $('#discount tbody').append(html);

    discount_row++;
  }
</script> 
<script type="text/javascript">
  var special_row = <?php echo $special_row; ?>;

  function addSpecial() {
    html  = '<tr id="special-row' + special_row + '">'; 
    html += '  <td><select name="product_special[' + special_row + '][customer_group_id]" class="form-control input-sm">';
    <?php foreach ($customer_groups as $customer_group) { ?>
    html += '      <option value="<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></option>';
    <?php } ?>
    html += '  </select></td>';		
    html += '  <td class="text-right"><input type="text" name="product_special[' + special_row + '][priority]" value="" class="form-control input-sm"></td>';
    html += '  <td class="text-right"><input type="text" name="product_special[' + special_row + '][price]" value="" class="form-control input-sm"></td>';
    html += '  <td><input type="date" name="product_special[' + special_row + '][date_start]" value="" class="form-control input-sm"></td>';
    html += '  <td><input type="date" name="product_special[' + special_row + '][date_end]" value="" class="form-control input-sm"></td>';
    html += '  <td><button type="button" onclick="$(\'#special-row' + special_row + '\').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>';
    html += '</tr>';

    $('#special tbody').append(html);

    special_row++;
  }
</script> 
<div class="modal fade" id="dialog" data-field="" data-thumb="">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title"><?php echo $text_image_manager; ?></h4>
      </div>
      <div class="modal-body">
        <iframe id="fm-iframe" style="display:block; border:0; padding:0; margin:0; width:100%; height:360px; overflow:auto;"></iframe>
      </div>
      <div class="modal-footer">
        <a href="#" id="dialog-confirm" class="btn btn-success hide"><i class="fa fa-thumbs-up"></i> Confirm</a>
        <a href="#" class="btn btn-success" data-dismiss="modal" aria-hidden="true">Close</a>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  function image_upload(field, thumb) {
    $('#dialog').attr('data-field', field);
    $('#dialog').attr('data-thumb', thumb);
    $('#dialog #fm-iframe').attr('src', 'index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field));
  };
  $(document.body).on('show.bs.modal', '#dialog', function () {
    $(this).find('#dialog-confirm').addClass('hide');
  });
  $(document.body).on('hidden.bs.modal', '#dialog', function () {
    var field = $(this).attr('data-field');
    var thumb = $(this).attr('data-thumb');

    if ($('#' + field).attr('value')) {
      $.ajax({
        url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).val()),
        dataType: 'text',
        success: function(data) {
          $('#' + thumb).replaceWith('<img src="' + data + '" alt="" id="' + thumb + '">');
        }
      });
    }
    $('#dialog').attr('data-field', '');
    $('#dialog').attr('data-thumb', '');
    $('#dialog #fm-iframe').attr('src', '');
  });
</script>
<script type="text/javascript">
  var image_row = <?php echo $image_row; ?>;

  function addImage() {
    html  = '<tr id="image-row' + image_row + '">';
    html += '  <td><img src="<?php echo $no_image; ?>" alt="" class="img-thumbnail" id="thumb' + image_row + '"><input type="hidden" name="product_image[' + image_row + '][image]" value="" id="image' + image_row + '"></td>';
    html += '  <td><div class="btn-group btn-group-sm"><button type="button" data-toggle="modal" data-target="#dialog" class="btn btn-primary" onclick="image_upload(\'image' + image_row + '\', \'thumb' + image_row + '\');"><span class="fa fa-pencil"></span> <?php echo $text_browse; ?></button><button class="btn btn-default btn-sm" onclick="$(\'#thumb' + image_row + '\').attr(\'src\', \'<?php echo $no_image; ?>\'); $(\'#image' + image_row + '\').attr(\'value\', \'\');return false"><span class="fa fa-trash-o"></span> <?php echo $text_clear; ?></button></div></td>';
    html += '  <td class="text-right"><input type="text" name="product_image[' + image_row + '][sort_order]" value="" class="form-control input-sm"></td>';
    html += '  <td><button type="button" onclick="$(\'#image-row' + image_row  + '\').remove();" class="btn btn-danger btn-sm"><i class="fa fa-minus-circle"></i> <?php echo $button_remove; ?></button></td>';
    html += '</tr>';

    $('#images tbody').append(html);

    image_row++;
  }
</script> 
<script type="text/javascript">
  $("input#input-tag<?php echo $language['language_id']; ?>").val();

  $('#language a:first').tab('show');
  $('#option a:first').tab('show');
</script> 
<?php echo $footer; ?>