<!-- Header -->
<?php 
	get_header(); 

	#Extraer todas las opciones de personalización
	$options = get_option("theme_settings");
?>


<?php  
	#Incluir plantilla de Slider Home
	include( locate_template("partials/slider-home/slider-home-revolution.php") );

?>


<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout">

</div> <!-- /.pageWrapperLayout -->


<!-- Footer -->
<?php get_footer(); ?>
