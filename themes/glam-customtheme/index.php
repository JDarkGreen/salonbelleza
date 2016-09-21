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


<!-- SECCION DE SERVICIOS -->
<?php include( locate_template('partials/home/section-services.php') ); ?>


<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout containerRelative">

	<?php  
		/**
		  * Conseguir la página de Conocenos y obtener sus datos
		*/
		$page_conocenos = get_page_by_title('conocenos');
	?>

	<section class="sectionCommonNosotros">

		<div class="row">
			
			<div class="col-xs-12 col-sm-6">
				
				<!-- Título -->
				<?php $excerpt_nosotros = !empty($page_conocenos->post_excerpt) ? $page_conocenos->post_excerpt : 'Bienvenidos a Central GLAM'; 

					$excerpt_nosotros = explode( ' ' , $excerpt_nosotros );
					
					$title_nosotros    = implode( ' ' , array_slice( $excerpt_nosotros , 0 , -1 ) );
					$featured_nosotros = implode( ' ' , array_slice( $excerpt_nosotros , -1 , 1 ) );

				?>
				<!-- Contenido -->
				<div class="content-text">

					<!-- Título -->
					<h2 class="title"> <?= $title_nosotros; ?> 
						<span> <?= $featured_nosotros; ?> </span>
					</h2>

					<?= apply_filters( 'the_content' , $page_conocenos->post_content ); ?>
					
					<!-- Botón ver más -->
					<a href="<?= get_permalink( $page_conocenos->ID ); ?>" class="btn-show-more">Más Info</a>

				</div> <!-- /.content-text -->
				
			</div> <!-- /.col-xs-12 col-sm-6 -->

		</div>

		<!-- Imagen -->
		<figure class="image-about-our">
			<?= get_the_post_thumbnail( $page_conocenos->ID , 'full' , array('class'=>'img-fluid d-block') ); ?>
		</figure> <!-- / -->
		
	</section> <!-- /.sectionCommonNosotros -->

</div> <!-- /.pageWrapperLayout -->

<!-- Incluir banner contacto -->
<?php include( locate_template('partials/section-contact-banner.php') ); ?>

<!-- Incluir seccion staff -->
<?php include( locate_template('partials/home/section-staff.php') ); ?>

<!-- Incluir seccion blog -->
<?php include( locate_template('partials/home/section-blog.php') ); ?>

<!-- Incluir seccion miscelenaeo -->
<?php include( locate_template('partials/home/section-miscelaneo.php') ); ?>


<!-- Footer -->
<?php get_footer(); ?>
