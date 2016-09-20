<?php  /* Template Name: Página Videos: Template */?>
<?php  
	global $post;
	
	//Obtener Header
	get_header(); 

	//Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Incluir opciones de banner
	$banner       = $post;
	$banner_title = 'videos';

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

		<?php  
			#Obtener todos los videos
			$args = array(
				'order'          => 'ASC',
				'orderby'        => 'menu_order',
				'post_status'    => 'publish',
				'post_type'      => 'theme-videos',
				'posts_per_page' => -1,
			);

			$videos = get_posts( $args );

			//Extraer primer video
			$featured_video = $videos[0];
		?>

		<!-- video -->
		<article class="itemVideoPreview--featured">
			<?php 
				$link_video = $featured_video->post_content;
				$link_video = str_replace( 'watch?v=' , 'embed/' , $link_video);
			?> 
			<iframe src="<?= $link_video; ?>" frameborder="0" allowfullscreen ></iframe>
		</article> <!-- /.$featured_video -->
		
		<!-- Contenedor de otros videos -->
		<div class="container-videos containerFlex">
			
			<?php foreach( $videos as $video ) : ?>

			<article class="itemVideoPreview">
				<?php 
					$link_video = $video->post_content;
					$link_video = str_replace( 'watch?v=' , 'embed/' , $link_video);
				?> 
				<iframe src="<?= $link_video; ?>" frameborder="0" allowfullscreen ></iframe>
			</article> <!-- /.$featured_video -->

			<?php endforeach; ?>
			
		</div> <!-- /.container-videos -->

	</div> <!-- /.pageContentLayout -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<!-- Incluir banner contacto -->
<?php include( locate_template('partials/section-contact-banner.php') ); ?>

<!-- Footer -->
<?php get_footer(); ?>

