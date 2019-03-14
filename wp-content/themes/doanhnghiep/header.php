<!DOCTYPE html>
<html <?php language_attributes(); ?> >
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title><?php bloginfo('name'); ?></title>
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
	<link rel="shortcut icon" href="<?php echo BASE_URL; ?>/images/favicontenten.ico">
	<?php $url_site =  get_site_url('null','/wp-content/themes/doanhnghiep', 'http');  ?>
	<!-- css -->
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>/css/slick.css">
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>/css/animate.css">
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?php echo BASE_URL; ?>/css/style.css">
	<!-- js -->
	<script src="<?php echo BASE_URL; ?>/js/jquery.min.js"></script>
	<script src="<?php echo BASE_URL; ?>/js/bootstrap.min.js"></script>
	<?php wp_head(); ?>
	<meta property="fb:app_id" content="1953938748210615">
	<meta property="fb:app_admins" content="1993613924220223">
</head>
<div id="fb-root"></div>
<script>(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = 'https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v3.1&appId=1953938748210615&autoLogAppEvents=1';
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>


<body <?php body_class() ?>>
	<div class="bg_opacity"></div>
	<?php if ( wp_is_mobile() ) { ?>
		<div id="menu_mobile_full">
			<nav class="mobile-menu">
				<p class="close_menu"><span><i class="fa fa-times" aria-hidden="true"></i></span></p>
				<?php 
				$args = array('theme_location' => 'menu_mobile');
				?>
				<?php wp_nav_menu($args);?>
			</nav>
		</div>
	<?php }?>
	<header class="header">
		<div class="top_header">
			<!-- display account top_header mobile -->
			
			<span class="icon_mobile_click"><i class="fa fa-bars" aria-hidden="true"></i></span>
			<div class="container">
				<div class="logo_site">
					<?php 
					if(has_custom_logo()){
						the_custom_logo();
					}
					else { ?> 
						<h2><a href="<?php echo home_url(); ?>"><?php bloginfo('name'); ?></a></h2>
					<?php } ?>
				</div>
				<div class="search_address">
					<div class="search_header">
						<form  role="search" method="get" id="searchform" action="<?php echo home_url('/');  ?>">
							<div class="search">
								<input type="text" value="" name="s" id="s" placeholder="Tìm kiếm">
								<button type="submit" id="searchsubmit"><i class="fa fa-search"></i></button>
							</div>
						</form>
					</div>

				</div>
					<div class="phone_hd">
						<div class="textwidget">
							<p>(024) 73 020 555</p>
							<span>Hỗ trợ (24/7)</span>
						</div>
					</div>
			</div>
			<div class="middle_header sticky">
				<div class="container">
					<nav class="nav nav_primary">
						<?php 
						$args = array('theme_location' => 'primary');
						?>
						<?php wp_nav_menu($args); ?>

					</nav>




				</div>
			</div>
		</header>