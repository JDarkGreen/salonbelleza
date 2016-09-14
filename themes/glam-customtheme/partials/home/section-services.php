<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA LOS SERVICIOS DE LA EMPRESA
***/

?>

<section class="pageInicioServices text-xs-center">

	<!-- Título -->
	<h2 class="titleCommon__section"> Servicios </h2>
	
	<h3 class="subtitleCommon__section"> 
		<span class="decoration"></span>

		Te ofrecemos lo último en belleza 
	</h3>
	
	<div class="containerRelative">

		<!-- Carousel Galeria de Clientes -->
		<div id="carousel-single-services" class="section__single_gallery js-carousel-gallery" data-items="4" data-items-responsive="1" data-margins="0" data-dots="false" data-autoplay="true" data-timeautoplay="5000">

			<?php  
				#Obtener todos los servicios
				$args = array(
					'post_status'    => 'publish',
					'post_type'      => 'theme-services',
					'posts_per_page' => -1,
				);

				$services = get_posts( $args );
			
				foreach( $services as $service ):
			?> <!-- Item preview de servicio -->
				<article class="itemServicePreview containerRelative">
					
					<!-- Imagen -->
					<?php  
						$feat_img = wp_get_attachment_url( get_post_thumbnail_id( $service->ID ) );
					?>
					<figure class="featured-image">
						<img src="<?= $feat_img; ?>" alt="<?= $service->post_name; ?>" class="img-fluid d-block m-x-auto" />
					</figure>

					<!-- CONTENEDOR DE TEXTO -->
					<div class="container-text text-xs-center">
						
						<!-- Nombre -->
						<h2 class="text-capitalize"><?= $service->post_title; ?></h2>
						
						<!-- Botón -->
						<a href="<?= get_permalink( $service->ID ); ?>" class="btn-show-more"><?= __('Más Info' , LANG ); ?></a>
						
					</div> <!-- /.container-text -->

				</article> <!-- /.itemServicePreview -->

			<?php endforeach; ?>

		</div> <!-- /carousel-single-services -->

	</div> <!-- /containerRelative -->
	
</section> <!-- /.pageInicioServices -->