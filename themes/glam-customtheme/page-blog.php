<?php  /* Template Name: Página Blog: Template */?>
<?php  
	global $post;
	
	//Obtener Header
	get_header(); 

	//Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Incluir opciones de banner
	$banner  = $post;

	include('partials/banner-top-page.php');

	//Posts por página 
	$posts_per_page = 6;

	//Variable de paginación
	$paged = get_query_var( 'paged' ) ? get_query_var( 'paged' ) : 1;

?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout containerRelative">

	<!-- Wrapper de Contenido -->
	<div class="pageContentLayout">
		
		<div class="row">
				
			<!-- Entradas de Blog -->
			<div class="col-xs-12 col-sm-8">

				<?php  
					$args = array(
						'order'          => 'DESC',
						'orderby'        => 'date',
						'paged'          => $paged,
						'post_status'    => 'publish',
						'post_type'      => 'post',
						'posts_per_page' => $posts_per_page,
					);

					$the_query = new WP_Query( $args );
				
					if( $the_query->have_posts() ) :
				?>

				<section class="pageBlogContent containerFlex">
				
					<?php
						//Recorrido para mostrar los items
						while( $the_query->have_posts() ) : $the_query->the_post();
					?>	
					
					<!-- Artículo -->
					<article class="itemPostPreview">

						<!-- Imágen -->
						<a href="<?= get_the_permalink(); ?>">
							<figure class="containerRelative">
									<?php the_post_thumbnail( 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>
							</figure> <!-- /. -->
						</a> <!-- /link -->

						<!-- Título -->
						<h2 class="title-post"> 
							<?php  
								$title = get_the_title();
								$title = wp_trim_words( $title, 10 , '...' );

								echo $title;
							?>
						</h2>
						
					</article> <!-- /.itemPreviewBlog-->
					

					<?php endwhile; ?>
				
				</section> <!-- /.pageBlogContent -->

				<!-- SECCION DE PAGINACIÓN -->
				<section class="sectionPagination text-xs-center">
					
					<?php
						echo "<span>" .  __("Página ","LANG") . "</span>"; 

						#Número de páginas
						$pages = $the_query->max_num_pages;

						for( $i = 1 ; $i <= $pages ; $i++ ) {
					?>
					<!-- Link -->
					<a href="<?= get_pagenum_link( $i ); ?>" class="<?= $i === $paged ? 'active' : '' ?>" > 
						<?= $i ?> 
					</a>

					<?php } ?>

				</section> <!-- /.sectionPagination -->
				
				<?php endif; ?>
				
			</div> <!-- /.col-xs-12 col-sm-8 -->

			<!-- SIDEBAR -->
			<div class="col-sm-4 hidden-xs-down">
					
				<?php  
					#Incluir sidebar de categorias
					include( locate_template('partials/categories-sidebar.php') );
				?>

			</div> <!-- /.col-sm-4 hidden-xs-down -->

		</div> <!-- /.row -->

	</div> <!-- /.pageWrapperSection -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<!-- Incluir banner contacto -->
<?php include( locate_template('partials/section-contact-banner.php') ); ?>

<!-- Footer -->
<?php get_footer(); ?>

