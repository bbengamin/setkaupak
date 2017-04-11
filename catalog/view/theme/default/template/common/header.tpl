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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"  rel="stylesheet">
<link rel="icon" href="/image/catalog/favicon.ico">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
  <div id="page-preloader"><span class="spinner"></span></div>
  <div id="mob-overlay" onclick="closeNav()"></div>
  <div id="mySidenav" class="sidenav">
    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"><i class="material-icons">close</i></a>
    <ul class="main-menu-box list-unstyled nav-links-scroll">
        <li><a onclick="closeNav()" href='#our-products'>Наша продукция</a></li>
        <li><a onclick="closeNav()" href='#specials'>Акции</a></li>
        <li><a onclick="closeNav()" href='#sertificates'>Сертификаты</a></li>
        <li><a onclick="closeNav()" href='#delivery'>Доставка по РФ</a></li>
        <li><a onclick="closeNav()" href='#warranties'>Гарантии</a></li>
        <li><a onclick="closeNav()" href='#reviews'>Отзывы клиентов</a></li>
        <li><a onclick="closeNav()" href='#contacts'>Контактная информация</a></li>
      </ul>
  </div>
  <div onclick="openNav()" class="open-mob-side-nav">
    <i class="material-icons">menu</i>
  </div>
<header id='home'>
  <div class="container">
    <div class="row">
      <div class="col-sm-2 head-info-item head-info-item-logo">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-4 head-info-item head-info-item-phone">
        <a href='tel:+74955653848'><?php echo $telephone; ?></a>
        <a href='mailto:<?php echo $config_email; ?>' class='mail-heade'><?php echo $config_email; ?></a>
        <span><?php echo $config_address; ?></span>
        
      </div>
      <div class="col-sm-4 head-info-item head-info-item-worktime">
         <span><?php echo $config_comment; ?></span>
        <span><?php echo $config_open; ?></span>
        <a href='#' data-toggle="modal" data-target="#myModal-callback">Заказать бесплатный звонок</a>
      </div>
      <div class="col-sm-2 head-info-item head-info-item-cart-box">
        <?php echo $cart; ?>
      </div>
    </div>
  </div>
</header>

<div class="main-menu-box">
  <div class="container">
    <div class="row">
      <ul class="main-menu-box list-unstyled nav-links-scroll">
        <li><a href='#our-products'>Наша продукция</a></li>
        <li><a href='#specials'>Акции</a></li>
        <li><a href='#sertificates'>Сертификаты</a></li>
        <li><a href='#delivery'>Доставка по РФ</a></li>
        <li><a href='#warranties'>Гарантии</a></li>
        <li><a href='#reviews'>Отзывы клиентов</a></li>
        <li><a href='#contacts'>Контактная информация</a></li>
      </ul>
    </div>
  </div>
</div>

