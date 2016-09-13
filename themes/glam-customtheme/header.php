<?php /**
 * El template para mostrar en el header
 *
 * Muestra todos los elementos de la cabeza y todo hasta el div " - contenido del sitio " .
 *
 * @package Wordpress
 * @subpackage Glam Theme
 * @since GlanTheme 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js">

<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">

	<title><?php wp_title('|', true, 'right'); ?><?php bloginfo('name'); ?></title>

	<meta name="description" content="<?php bloginfo('description'); ?>" />
	<meta name="author" content="" />

	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />

	<link rel="profile" href="http://gmpg.org/xfn/11">
	
	<!-- Pingback -->
	<?php if ( is_singular() && pings_open( get_queried_object() ) ) : ?>
		<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
	<?php endif; ?>

	<!-- Stylesheets -->
	<link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>" />
	
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- Favicon and Apple Icons -->

	<?php wp_head(); ?>
</head>

<?php  
	# Extraer todas las opciones de personalización
	$options   = get_option("theme_settings");
	# Comprobar si esta desplegada la barra de Navegación
	$admin_bar = is_admin_bar_showing() ? 'mainHeader__active-bar' : '';

	# Extraemos el logo de las opciones del tema
	$logo_theme = isset($options['theme_meta_logo_text']) && !empty($options['theme_meta_logo_text']) ? $options['theme_meta_logo_text'] : IMAGES . '/logo.jpg';

?>

<body <?php body_class(); ?>>

<!-- Header -->
<header id="mainHeader" class="mainHeader">

	<!-- Only in Desktop -->
	<div class="hidden-xs-down">
		
		<!-- Contenedor Layout -->
		<div class="pageWrapperLayout">
	
			<div class="row">
				
				<div class="col-xs-4">
					
					<div class="mainHeader__item containerFlex">
						<!-- Icon -->
						<i class="fa fa-phone" aria-hidden="true"></i>
						
						<!-- Text -->
						<div>
							<p class="text-phone"> <span> Tel.: </span> 800-2325 </p>
							<p> Atencón: 8am a 8pm | Mar. - Dom </p>
						</div>

					</div> <!-- /.mainHeader__item -->
				
				</div> <!-- /.col-xs-4 -->


				<div class="col-xs-4">

					<h1 class="mainLogo">
						<a href="<?= site_url(); ?>">
							<img src="<?= $logo_theme; ?>" alt="<?php bloginfo('description'); ?>" class="img-fluid" />
						</a>
					</h1> <!-- /.mainLogo -->
					
				</div> <!-- /.col-xs-4 -->


				<div class="col-xs-4">
					
					<div class="mainHeader__item containerFlex">
						<!-- Icon -->
						<i class="fa fa-map-marker" aria-hidden="true"></i>
						
						<!-- Text -->
						<div>
							<p>Av. Arenales 254, San Isidro <br/>
							   Lima - Perú
							</p>
						</div>

					</div> <!-- /.mainHeader__item -->
				
				</div> <!-- /.col-xs-4 -->

			</div> <!-- /.row -->
			
		</div> <!-- /.pageWrapperLayout -->

	</div> <!-- /.hidden-xs-down -->
	
	<!-- MainNavigation -->
	<?php include( locate_template('partials/main-navigation.php') ); ?>

	
</header> <!-- /.#mainHeader -->


