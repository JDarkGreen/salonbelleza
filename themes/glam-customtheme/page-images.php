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
<div class="pageWrapperLayout containerRelative text-xs-center">

	<!-- Wrapper de Contenido -->
	<div class="pageContentLayout">
		
		<!-- Título -->
		<h2 class="titleCommon__section"> <?= __('Nuestros trabajos' , LANG ); ?> </h2>

		<!-- Subtitulo -->
		<h3 class="subtitleCommon__section"> 
			<span class="decoration"></span>
			<?= !empty($post->post_content) ? $post->post_content : 'He aquí algunos de nuestros mejores proyectos'; ?>
		</h3> <!-- /. -->

		<!-- Botones que filtran las imágenes -->
		<div class="containerIsotopeButtons button-group filter-button-group">
			<button class="active" data-filter="*"><?php _e( 'todas', LANG ); ?></button>
			<!-- Extraer taxonomias -->
			<?php  
				$cats_images = get_terms( array( 'taxonomy'   => 'images_category', 'hide_empty' => false,
				)); 

				#var_dump($cats_images);
				foreach( $cats_images as $cat_images ) : 
			?>
				<button data-filter="<?= "." . $cat_images->slug ?>"><?= $cat_images->name ?></button>

			<?php endforeach; ?>
		</div> <!-- /. -->

		<!-- Obtener todos las imágenes destacadas -->
		<div id="isotope-images" class="containerFlex js-containerIsotope">
			<?php  
				$args = array(
					'order'          => 'ASC',
					'orderby'        => 'menu_order',
					'post_status'    => 'publish',
					'post_type'      => 'theme-images',
					'posts_per_page' => -1,
				);

				$images = get_posts( $args );

				foreach( $images as $image ) :
				
					if( has_post_thumbnail( $image->ID ) ) :

					//Extraer todas las categorias adjuntadas a esta imagen
					$terms_images = wp_get_post_terms( $image->ID , 'images_category', array('fields'=>'slugs') );

					//Unir los terminos con espacios
					$terms_images = implode( ' ' , $terms_images );
			
					//Ruta imagen
					$url_image = wp_get_attachment_url( get_post_thumbnail_id( $image->ID ) );
			?>
				<!-- Galeria Imágen  -->
 				<figure class="js-item-isotope itemImagePreview containerRelative <?= $terms_images ?>">
					
					<a href="<?= $url_image; ?>" class="gallery-fancybox containerRelative d-block" title="<?= $image->post_content; ?>">
						
						<?= get_the_post_thumbnail( $image->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>
		
						<!-- Texto -->
						<figcaption class="container-text">
							<h2> <?= $image->post_title; ?> </h2>
							<p> <?= $image->post_content; ?></p>
						</figcaption> <!-- /.container-text -->

					</a> <!-- /.gallery-fancybox -->

				</figure> <!--  -->

			<?php endif; endforeach; ?>

		</div> <!-- /.pageInicio__portafolio__content -->


		<!-- Limpiar floats --><div class="clearfix"></div>

		<!-- Mensaje Isotope en caso no se haya encontrado elementos -->
		<div id="message-isotope" style="display:none;">
			<h2 class="pageCommon__title text-xs-center text-uppercase"> <?php _e('No hay elementos en esta categoría aún' , LANG ); ?></h2>
		</div> <!-- /#message-isotope -->


	</div> <!-- /.pageContentLayout -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<!-- Incluir banner contacto -->
<?php include( locate_template('partials/section-contact-banner.php') ); ?>

<!-- Footer -->
<?php get_footer(); ?>

