<?php  /* Template Name: Página Images: Template */?>
<?php  
	global $post;
	
	//Obtener Header
	get_header(); 

	//Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Incluir opciones de banner
	$banner       = $post;
	$banner_title = 'fotos';

	include('partials/banner-top-page.php');

?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout containerRelative">

	<!-- Wrapper de Contenido -->
	<div class="pageContentLayout">

		
		

	</div> <!-- /.pageWrapperSection -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<!-- Incluir banner contacto -->
<?php include( locate_template('partials/section-contact-banner.php') ); ?>

<!-- Footer -->
<?php get_footer(); ?>

