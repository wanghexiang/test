<?php if (!defined('THINK_PATH')) exit();?><head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Simpla Admin by www.865171.cn</title>
<!--                       CSS                       -->

<!-- Main Stylesheet -->
<link rel="stylesheet" href="__PUBLIC__/css/style.css" type="text/css" media="screen" />

<!--                       Javascripts                       -->
<!-- jQuery -->
<script type="text/javascript" src="__PUBLIC__/JS/jquery-1.3.2.min.js"></script>
<!-- jQuery Configuration -->
<script type="text/javascript" src="__PUBLIC__/JS/simpla.jquery.configuration.js"></script>
</head>
<body class="body">
<div id="body-wrapper">
  <!-- Wrapper for the radial gradient background -->
  <div id="sidebar">
    <div id="sidebar-wrapper">
      <!-- Sidebar with logo and menu -->
      <h1 id="sidebar-title"><a href="#">Simpla Admin</a></h1>
      <!-- Logo (221px wide) -->
      <a href="http://www.865171.cn"><img id="logo" src="__PUBLIC__/images/logo.png" alt="Simpla Admin logo" /></a>
      <!-- Sidebar Profile links -->
      <div id="profile-links"> Hello, <a href="#" title="Edit your profile">865171</a>, you have <a href="#messages" rel="modal" title="3 Messages">3 Messages</a><br />
        <br />
        <a href="#" title="View the Site">View the Site</a> | <a href="<?php echo U('Login/loginout');?>" title="Sign Out">Sign Out</a> </div>
      <ul id="main-nav">
        <!-- Accordion Menu -->
        <li> <a href="" class="nav-top-item no-submenu">
          <!-- Add the class "no-submenu" to menu items with no sub menu -->
          Dashboard </a> </li>
        <li> <a href="#" class="nav-top-item current">
          <!-- Add the class "current" to current menu item -->
          Articles </a>
          <ul>
            <li><a href="#">添加文章</a></li>
            <li><a class="current" href="#">Manage Articles</a></li>
            <!-- Add class "current" to sub menu items also -->
            <li><a href="#">Manage Comments</a></li>
            <li><a href="#">Manage Categories</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> 分类管理 </a>
          <ul>
            <li><a href="<?php echo U('Article_cate/add');?>" target="main">添加分类</a></li>
            <li><a href="<?php echo U('Article_cate/index');?>" target="main">分类列表</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> Image Gallery </a>
          <ul>
            <li><a href="#">Upload Images</a></li>
            <li><a href="#">Manage Galleries</a></li>
            <li><a href="#">Manage Albums</a></li>
            <li><a href="#">Gallery Settings</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> Events Calendar </a>
          <ul>
            <li><a href="#">Calendar Overview</a></li>
            <li><a href="#">Add a new Event</a></li>
            <li><a href="#">Calendar Settings</a></li>
          </ul>
        </li>
        <li> <a href="#" class="nav-top-item"> Settings </a>
          <ul>
            <li><a href="#">General</a></li>
            <li><a href="#">Design</a></li>
            <li><a href="#">Your Profile</a></li>
            <li><a href="#">Users and Permissions</a></li>
          </ul>
        </li>
      </ul>
      <!-- End #main-nav -->
      <div id="messages" style="display: none">
        <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
        <h3>3 Messages</h3>
        <p> <strong>17th May 2009</strong> by Admin<br />
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
        <p> <strong>2nd May 2009</strong> by Jane Doe<br />
          Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
        <p> <strong>25th April 2009</strong> by Admin<br />
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
        <form action="#" method="post">
          <h4>New Message</h4>
          <fieldset>
          <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
          </fieldset>
          <fieldset>
          <select name="dropdown" class="small-input">
            <option value="option1">Send to...</option>
            <option value="option2">Everyone</option>
            <option value="option3">Admin</option>
            <option value="option4">Jane Doe</option>
          </select>
          <input class="button" type="submit" value="Send" />
          </fieldset>
        </form>
      </div>
      <!-- End #messages -->
    </div>
  </div>
  <!-- End #sidebar -->
  <div id="main-content">
    <!-- Main Content Section with everything -->
    <noscript>
    <!-- Show a notification if the user has disabled javascript -->
    <div class="notification error png_bg">
      <div> Javascript is disabled or is not supported by your browser. Please <a href="http://browsehappy.com/" title="Upgrade to a better browser">upgrade</a> your browser or <a href="http://www.google.com/support/bin/answer.py?answer=23852" title="Enable Javascript in your browser">enable</a> Javascript to navigate the interface properly.
        Download From <a href="http://www.exet.tk">exet.tk</a></div>
    </div>
    </noscript>
    <!-- Page Head -->
</body>	
</html>