<?php /* Single Name: Página Single Blog: Plantilla */ ?>
<?php 
	global $post;
	
	//Obtener Header
	get_header(); 

	//Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Incluir opciones de banner
	$banner       = $post;
	$banner_title = 'artículo';

	include('partials/banner-top-page.php');
?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout">

	<!-- Wrapper de Contenido -->
	<div class="pageContentLayout">

		<div class="row">
			
			<!-- CONTENIDO DE PÁGINA -->
			<div class="col-xs-12 col-sm-8">

				<!-- Single  -->
				<article class="itemSingleBlog">

					<!-- Fecha -->
					<span class="post-date"> <?= get_the_date();  ?> </span>

					<!-- Título del Post -->
					<h2 class="titlePost text-capitalize">
						<?= __( $post->post_title , "LANG" ); ?>
					</h2>
					
					<figure>
						<?= get_the_post_thumbnail( get_the_ID() , 'full' , array('class'=>'img-fluid d-block') ); ?>
					</figure>	

					<!-- Contenido -->
					<div class="text-content">
						<?= apply_filters( 'the_content' , $post->post_content ); ?>
					</div> <!-- /.text-content -->

					<!-- Compartir -->
					<h5 class="text-uppercase"> <b> Compartir: </b> </h5>
					<!-- Facebook -->
					<a href="javascript:window.open('https://www.facebook.com/sharer/sharer.php?u=<?= get_permalink($post->ID) ?>' , '_blank' , 'width=400 , height=500' ); void(0);"><i class="fa fa-facebook" aria-hidden="true"></i></a>
					
				</article> <!-- /.itemSingleBlog -->

			</div> <!-- /.col-xs-12 col-sm-9 -->

			<!-- SIDEBAR DE PÁGINA -->
			<div class="col-xs-12 col-sm-4">

				<?php  
					#Incluir sidebar de categorias
					include( locate_template('partials/categories-sidebar.php') );
				?>

			</div> <!-- /.col-xs-12 col-sm-3 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.pageContentLayout -->

</div> <!-- /.pageWrapperLayout -->

<!-- Incluir banner contacto -->
<?php include( locate_template('partials/section-contact-banner.php') ); ?>

<!-- Footer -->
<?php get_footer(); ?>