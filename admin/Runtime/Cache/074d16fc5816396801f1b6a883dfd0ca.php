<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Simpla Admin by www.865171.cn</title>
<!--                       CSS                       -->
<!-- Reset Stylesheet -->
<link rel="stylesheet" href="__PUBLIC__/css/reset.css" type="text/css" media="screen" />
<!-- Main Stylesheet -->
<link rel="stylesheet" href="__PUBLIC__/css/style.css" type="text/css" media="screen" />
<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
<link rel="stylesheet" href="__PUBLIC__/css/invalid.css" type="text/css" media="screen" />
<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="__PUBLIC__/JS/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="__PUBLIC__/JS/simpla.jquery.configuration.js"></script>
</head>
<div id="main-content">
	   <div class="tab-content" id="tab2">
          <form action="<?php echo U('Article_cate/save');?>" method="post">
			<input name="id" type="hidden" value="<?php echo ($result["id"]); ?>"/>
			<input name="pid" type="hidden" value="<?php echo ($pid); ?>"/>
            <fieldset>
            <!-- Set class to "column-left" or "column-right" on fieldsets to divide the form into columns -->
            <p>
              <label>在下面填写分类名称</label>
              <input class="text-input small-input" type="text" id="name" name="name" value="<?php echo ($result["name"]); ?>" />
              <span class="input-notification success png_bg">Successful message</span>
              <!-- Classes for input-notification: success, error, information, attention -->
              <br />
              <small>A small description of the field</small> </p>
           <p>
              <input class="button" type="submit" value="保存" />
            </p>
            </fieldset>
            <div class="clear"></div>
            <!-- End .clear -->
          </form>
        </div>
        <!-- End #tab2 -->
</div>
</html>