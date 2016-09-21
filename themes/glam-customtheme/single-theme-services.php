<?php  /* Name: Single Página Servicios: Template */?>
<?php  
	global $post;
	
	//Obtener Header
	get_header(); 

	//Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Incluir opciones de banner
	$banner  = $post;

	include('partials/banner-top-page.php');

?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout containerRelative">

	<section class="pageServiceContent">

		<div class="row">
			
			<!-- IMÁGEN -->
			<div class="col-xs-12 col-sm-4">

				<figure class="featured-image-service">
					<?php 
						$image_service_src = has_post_thumbnail( $post->ID ) ? wp_get_attachment_url( get_post_thumbnail_id( $post->ID ) ) : 'https://unsplash.it/980'; 

						$image_service_description = $post->post_name;
					?>
					
					<a href="<?= $image_service_src; ?>" class="gallery-fancybox">
						<img src="<?= $image_service_src; ?>" alt="<?= $image_service_description; ?>" class="img-fluid d-block" />
					</a> <!-- /. -->

				</figure> <!-- /.featured-image-service -->
				
			</div> <!-- /col-xs-12.col-sm-4 -->

			<!-- TEXTO -->
			<div class="col-xs-12 col-sm-8">
			
				<!-- Título -->
				<h2 class="title-service"> <?= __( $post->post_title , 'LANG' ); ?> </h2>

				<!-- Contenedor de tabs -->
				<div class="container-tabs">

					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">

						<li class="nav-item">
					    	<a class="nav-link active" data-toggle="tab" href="#service-cortes" role="tab"> Corte y Peinados </a>
					  	</li>

						<?php  
							/*
							 * Comprobar si metabox de color esta seteado
							 */
							$mb_color = get_post_meta( $post->ID , 'mbservicecolor', true);
							
							$mb_color = preg_replace('/\s+/', '', $mb_color);

							if( !empty($mb_color) ) :
						?>
					  	<li class="nav-item">
					    	<a class="nav-link" data-toggle="tab" href="#service-color" role="tab"> Color </a>
					  	</li>
					  	<?php endif; ?>


						<?php  
							/*
							 * Comprobar si metabox de cuidados esta seteado
							 */
							$mb_care = get_post_meta( $post->ID , 'mbservicecare', true);
							
							$mb_care = preg_replace('/\s+/', '', $mb_care);

							if( !empty($mb_care) ) :
						?>
					  	<li class="nav-item">
					    	<a class="nav-link" data-toggle="tab" href="#service-care" role="tab"> Cuidados </a>
					  	</li>
					  	<?php endif; ?>
					  	
						<?php  
							/*
							 * Comprobar si metabox de lisos esta seteado
							 */
							$mb_lisos = get_post_meta( $post->ID , 'mbservicelisos', true);
							
							$mb_lisos = preg_replace('/\s+/', '', $mb_lisos);

							if( !empty($mb_lisos) ) :
						?>
					  	<li class="nav-item">
					    	<a class="nav-link" data-toggle="tab" href="#service-lisos" role="tab"> Lisos </a>
					  	</li>
					  	<?php endif; ?>


						<?php  
							/*
							 * Comprobar si metabox de maquillaje esta seteado
							 */
							$mb_makeup = get_post_meta( $post->ID , 'mbservicemakeup', true);
							
							$mb_makeup = preg_replace('/\s+/', '', $mb_makeup);

							if( !empty($mb_makeup) ) :
						?>
					  	<li class="nav-item">
					    	<a class="nav-link" data-toggle="tab" href="#service-makeup" role="tab"> Maquillaje </a>
					  	</li>
					  	<?php endif; ?>
					
					</ul> <!-- /.nav nav-tabs -->

					<!-- Tab panes -->
					<div class="tab-content">

						<!-- Peinados -->
						<div class="tab-pane fade in active" id="service-cortes" role="tabpanel">
							<?= !is_null( get_post_meta( $post->ID , 'mbservicecortes', true) ) ? apply_filters( 'the_content' , get_post_meta( $post->ID , 'mbservicecortes', true) ) : '' ; ?>
						</div> <!-- /. -->

						<!-- Color -->
						<div class="tab-pane fade" id="service-color" role="tabpanel">
							<?= !is_null( get_post_meta( $post->ID , 'mbservicecolor', true) ) ? apply_filters( 'the_content' , get_post_meta( $post->ID , 'mbservicecolor', true) ) : '' ; ?>
						</div> <!-- /. -->

						<!-- Cuidados -->
						<div class="tab-pane fade" id="service-care" role="tabpanel">
							<?= !is_null( get_post_meta( $post->ID , 'mbservicecare', true) ) ? apply_filters( 'the_content' , get_post_meta( $post->ID , 'mbservicecare', true) ) : '' ; ?>
						</div> <!-- /. -->

						<!-- Lisos -->
						<div class="tab-pane fade" id="service-lisos" role="tabpanel">
							<?= !is_null( get_post_meta( $post->ID , 'mbservicelisos', true) ) ? apply_filters( 'the_content' , get_post_meta( $post->ID , 'mbservicelisos', true) ) : '' ; ?>
						</div> <!-- /. -->

						<!-- Maquillaje -->
						<div class="tab-pane fade" id="service-makeup" role="tabpanel">
							<?= !is_null( get_post_meta( $post->ID , 'mbservicemakeup', true) ) ? apply_filters( 'the_content' , get_post_meta( $post->ID , 'mbservicemakeup', true) ) : '' ; ?>
						</div> <!-- /. -->

					</div> <!-- /tab-content -->
					
				</div> <!-- /.container-tabs -->
				
			</div> <!-- /.col-xs-12 col-sm-8 -->
			
		</div> <!-- /.row -->
		
	</section> <!-- /.pageServiceContent -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<!-- Incluir banner contacto -->
<?php include( locate_template('partials/section-contact-banner.php') ); ?>

<!-- Footer -->
<?php get_footer(); ?>

