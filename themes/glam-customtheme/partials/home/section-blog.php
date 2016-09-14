<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA LAS ENTRADAS DEL BLOG DE LA WEB
***/

?>

<section class="pageInicioBlog text-xs-center">

	<!-- Título -->
	<h2 class="titleCommon__section"> Blog </h2>
	
	<h3 class="subtitleCommon__section"> 
		<span class="decoration"></span> Hacemos belleza
	</h3>
	
	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="pageWrapperLayout containerRelative">

		<!-- Carousel Galeria de Clientes -->
		<div id="carousel-blog" class="section__single_gallery js-carousel-gallery" data-items="3" data-items-responsive="1" data-margins="33" data-dots="false" data-autoplay="true" data-timeautoplay="5000">

			<?php  
				#Obtener todos los servicios
				$args = array(
					'post_status'    => 'publish',
					'post_type'      => 'post',
					'posts_per_page' => -1,
				);

				$posts = get_posts( $args );
			
				foreach( $posts as $entrada ):
			?> 

				<!-- Item preview de servicio -->
				<article class="itemPostPreview containerRelative">
					
					<!-- Imagen -->
					<?php  
						$feat_img = wp_get_attachment_url( get_post_thumbnail_id( $entrada->ID ) );
					?>
					<a href="<?= get_permalink( $entrada->ID ); ?>">

						<figure class="featured-image containerRelative">
							<!-- Link -->


								<img src="<?= $feat_img; ?>" alt="<?= $entrada->post_name; ?>" class="img-fluid d-block m-x-auto" />				

						</figure>
					
					</a><!-- /end of link -->

					<!-- Nombre -->
					<h2 class=""><?= $entrada->post_title; ?></h2>

				</article> <!-- /.itemServicePreview -->

			<?php endforeach; ?>

		</div> <!-- /carousel-single-services -->

	</div> <!-- /pageWrapperLayout containerRelative -->
	
</section> <!-- /.pageInicioBlog -->