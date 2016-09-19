<?php  /* Template Name: Página Nosotros: Template */?>
<?php  
	global $post;
	
	//Obtener Header
	get_header(); 

	//Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Incluir opciones de banner
	$banner       = $post;
	$banner_title = "nosotros";

	include('partials/banner-top-page.php');

	//Obtener página nosotros y sus datos
	$page_conocenos = get_page_by_title('conocenos');
?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout containerRelative">

	<section class="sectionCommonNosotros">
		
		<!-- Imagen -->
		<figure id="image-featured-nosotros">
			<?= get_the_post_thumbnail( $page_conocenos->ID , 'full' , array('class'=>'img-fluid d-block') ); ?>
		</figure> <!-- / -->

		<div class="row">
			
			<div class="col-xs-12 col-sm-6 offset-sm-6">
				
				<!-- Título -->
				<?php 

					$excerpt_nosotros = !empty($page_conocenos->post_excerpt) ? $page_conocenos->post_excerpt : 'Bienvenidos a Central GLAM'; 

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

				</div> <!-- /.content-text -->
				
			</div> <!-- /.col-xs-12 col-sm-6 -->

		</div> <!-- /.row -->

	</section> <!-- /.sectionCommonNosotros -->

</div> <!-- /.pageWrapperLayout containerRelative -->

<!-- Limpiar Espacio --> <div id="spacing-section-nosotros" class="clearfix"></div>

<!-- Incluir seccion staff -->
<?php include( locate_template('partials/home/section-staff.php') ); ?>

<!-- Incluir banner contacto -->
<?php include( locate_template('partials/section-contact-banner.php') ); ?>

<!-- Footer -->
<?php get_footer(); ?>

