<?php  /* Template Name: Página Servicios: Template */?>
<?php  
	global $post;
	
	//Obtener Header
	get_header(); 

	//Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Incluir opciones de banner
	$banner  = $post;

	include('partials/banner-top-page.php');

	/**[ Obtener todos los servicios y escoger el primero ]**/
	$args = array(
		'order'          => 'ASC',
		'orderby'        => 'menu_order',
		'post_status'    => 'publish',
		'post_type'      => 'theme-services',
		'posts_per_page' => 1,
	);

	$services = get_posts( $args );

	//Servicio
	$the_service = $services[0];

?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout containerRelative">

	<section class="pageServiceContent">

		<div class="row">
			
			<!-- IMÁGEN -->
			<div class="col-xs-12 col-sm-4">

				<figure class="featured-image-service">
					<?php 
						$image_service_src = has_post_thumbnail( $the_service->ID ) ? wp_get_attachment_url( get_post_thumbnail_id( $the_service->ID ) ) : 'https://unsplash.it/980'; 

						$image_service_description = $the_service->post_name;
					?>
					
					<a href="<?= $image_service_src; ?>" class="gallery-fancybox">
						<img src="<?= $image_service_src; ?>" alt="<?= $image_service_description; ?>" class="img-fluid d-block" />
					</a> <!-- /. -->

				</figure> <!-- /.featured-image-service -->
				
			</div> <!-- /col-xs-12.col-sm-4 -->

			<!-- TEXTO -->
			<div class="col-xs-12 col-sm-8">
			
				<!-- Título -->
				<h2 class="title-service"> <?= __( $the_service->post_title , 'LANG' ); ?> </h2>

				<!-- Contenedor de tabs -->
				<div class="container-tabs">

					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item">
					    	<a class="nav-link active" data-toggle="tab" href="#service-cortes" role="tab"> Corte y Peinados </a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link" data-toggle="tab" href="#service-color" role="tab"> Color </a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link" data-toggle="tab" href="#service-care" role="tab"> Cuidados </a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link" data-toggle="tab" href="#service-lisos" role="tab"> Lisos </a>
					  	</li>
					  	<li class="nav-item">
					    	<a class="nav-link" data-toggle="tab" href="#service-makeup" role="tab"> Maquillaje </a>
					  	</li>
					</ul> <!-- /.nav nav-tabs -->

					<!-- Tab panes -->
					<div class="tab-content">

						<!-- Peinados -->
						<div class="tab-pane fade in active" id="service-cortes" role="tabpanel">
							<?= !is_null( get_post_meta( $the_service->ID , 'mbservicecortes', true) ) ? apply_filters( 'the_content' , get_post_meta( $the_service->ID , 'mbservicecortes', true) ) : '' ; ?>
						</div> <!-- /. -->

						<!-- Color -->
						<div class="tab-pane fade" id="service-color" role="tabpanel">
							<?= !is_null( get_post_meta( $the_service->ID , 'mbservicecolor', true) ) ? apply_filters( 'the_content' , get_post_meta( $the_service->ID , 'mbservicecolor', true) ) : '' ; ?>
						</div> <!-- /. -->

						<!-- Cuidados -->
						<div class="tab-pane fade" id="service-care" role="tabpanel">
							<?= !is_null( get_post_meta( $the_service->ID , 'mbservicecare', true) ) ? apply_filters( 'the_content' , get_post_meta( $the_service->ID , 'mbservicecare', true) ) : '' ; ?>
						</div> <!-- /. -->

						<!-- Lisos -->
						<div class="tab-pane fade" id="service-lisos" role="tabpanel">
							<?= !is_null( get_post_meta( $the_service->ID , 'mbservicelisos', true) ) ? apply_filters( 'the_content' , get_post_meta( $the_service->ID , 'mbservicelisos', true) ) : '' ; ?>
						</div> <!-- /. -->

						<!-- Maquillaje -->
						<div class="tab-pane fade" id="service-makeup" role="tabpanel">
							<?= !is_null( get_post_meta( $the_service->ID , 'mbservicemakeup', true) ) ? apply_filters( 'the_content' , get_post_meta( $the_service->ID , 'mbservicemakeup', true) ) : '' ; ?>
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

