<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA LAS ENTRADAS DEL BLOG DE LA WEB
***/

?>

<section class="pageInicioMiscelaneo">

	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="pageWrapperLayout containerRelative">

		<div class="row">
			
			<div class="col-xs-12 col-sm-7">

				<!-- Título -->
				<div class="text-xs-center">
	
					<h2 class="title"> Clientes sobre nosotros </h2>
					
					<h3 class="subtitleCommon__section"> 
						<span class="decoration"></span> Hacemos belleza
					</h3> <!-- /. -->
					
				</div> <!-- /.text-xs-center -->

				<!-- Contenedor de testimonios -->
				<section class="container-testimony swiper-container" data-slides-per-view="1" data-space-between="1">

					<!-- Additional required wrapper -->
				    <div class="swiper-wrapper">

				    	<?php  
							#Obtener todos las entradas del blog
							$args = array(
								'post_status'    => 'publish',
								'post_type'      => 'theme-testimony',
								'posts_per_page' => -1,
							);

							$testimonios = get_posts( $args );
						
							foreach( $testimonios as $testimonio ):
						?> 
							<!-- Slides de Libreria - contenedor -->
		        			<div class="swiper-slide">

								<div class="itemTestimonio">
									
									<!-- Texto -->
									<div class="content-text">
										<?= $testimonio->post_content; ?>
									</div><!-- /.content-text -->	
									
									<!-- Imágenes -->
									<div class="content-image">
										
										<!-- Imagen -->
										<figure><?= get_the_post_thumbnail( $testimonio->ID , array(50) , 'img-fluid d-block' ); ?></figure>

										<?= $testimonio->post_title; ?>

									</div> <!-- /.content-image -->				
			
								</div> <!-- /.itemTestimonio -->

							</div> <!-- /.swiper-slide -->

						<?php endforeach; ?>

					</div> <!-- /.swiper-wrapper -->
					
				</section> <!-- /.container-testimony -->
				
			</div> <!-- /.col-xs-12 col-sm-7 -->

			
			<div class="col-xs-12 col-sm-5">
				
			</div> <!-- /.col-xs-12 col-sm-5 -->

		</div> <!-- /.row -->
	
	</div> <!-- /pageWrapperLayout containerRelative -->
	
</section> <!-- /.pageInicioBlog -->