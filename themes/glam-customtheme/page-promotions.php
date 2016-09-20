<?php  /* Template Name: Página Promociones: Template */?>
<?php  
	global $post;
	
	//Obtener Header
	get_header(); 

	//Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Incluir opciones de banner
	$banner       = $post;

	include('partials/banner-top-page.php');

?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout containerRelative text-xs-center">

	<!-- Wrapper de Contenido -->
	<div class="pageContentLayout">
		

		<?php  
			#Obtener todos las promociones
			$args = array(
				'order'          => 'ASC',
				'orderby'        => 'menu_order',
				'post_status'    => 'publish',
				'post_type'      => 'theme-promotions',
				'posts_per_page' => -1,
			);

			$promotions = get_posts( $args );
		?>

		<!-- Contenedor de Promociones -->
		<section class="containerPromotions containerFlex containerRelative">

			<?php foreach( $promotions as $promotion ) : ?>

			<?php  
				//Imagen Destacada
				if( has_post_thumbnail( $promotion->ID ) ) :

				$url_image = wp_get_attachment_url( get_post_thumbnail_id( $promotion->ID ) );		
			?>

			<!-- Articulo o promoción -->
			<article class="itemPromotion">

				<a href="<?= $url_image; ?>" class="gallery-fancybox d-block" title="<?= $promotion->post_title; ?>">

					<?= get_the_post_thumbnail( $promotion->ID , 'full' , array('class'=>'img-fluid d-block') ); ?>

				</a> <!-- /.gallery-fancybox -->
				
			</article> <!-- /.itemPromotion-->

			<?php endif; endforeach; ?>
			
		</section> <!-- /.containerPromotions -->

	</div> <!-- /.pageContentLayout -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<!-- Incluir banner contacto -->
<?php include( locate_template('partials/section-contact-banner.php') ); ?>

<!-- Footer -->
<?php get_footer(); ?>

