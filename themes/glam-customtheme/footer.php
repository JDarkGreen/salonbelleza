<?php
/**
 * La plantilla que muestra el footer
 *
 * Contiene el cierre de la div #content y todo el contenido después de
 *
 * @package WordPress
 * @subpackage Salon Glam
 * @since Salon Glam 1.0
 */

#Extraer todas las opciones de personalización
$options = get_option("theme_settings");

?>
	
	<footer id="mainFooter" class="mainFooter">
		
		<!-- Contenedor de Layout -->
		<div class="pageWrapperLayout containerRelative">
			
			<div class="row">
				
				<!-- Item Footer -->
				<div class="col-xs-12 col-sm-4">
					
					<div class="itemFooter">
						
						<!-- Logo -->
						<img src="<?= IMAGES ?>/logo.jpg" alt="<?php bloginfo('description') ?>" class="img-fluid d-block m-x-auto" />

						<?php  
							#Presentación Footer
							$text_footer = isset($options['theme_footer_text']) ? $options['theme_footer_text'] : '';

							echo apply_filters( 'the_content' , $text_footer ); 
						?>

					</div> <!-- /.itemFooter -->

				</div> <!-- /.col-xs-12 col-sm-4 -->

				<!-- Item Footer -->
				<div class="col-xs-12 col-sm-4">
					
					<div class="itemFooter">
						
						<!-- Título-->
						<h2 class="title-footer"> <?= __("Redes Sociales" , LANG ); ?></h2>

						<!-- Lista de Redes  -->

					</div> <!-- /.itemFooter -->

				</div> <!-- /.col-xs-12 col-sm-4 -->

				<!-- Item Footer -->
				<div class="col-xs-12 col-sm-4">
					
					<div class="itemFooter">
						
						<!-- Título-->
						<h2 class="title-footer"> <?= __("Contacto" , LANG ); ?></h2>

						<!-- Lista de Contacto  -->
						ul 

						<!-- Texto web -->
						<h2 class="texto-web"> www. <span>CentralGlam</span> .com </h2>

					</div> <!-- /.itemFooter -->

				</div> <!-- /.col-xs-12 col-sm-4 -->

			</div> <!-- /.row -->

		</div> <!-- /.pageWrapperLayout containerRelative -->


		<!-- Sección Desarrollo -->
		<section class="mainFooter__develop">

			<!-- Contenedor de Layout -->
			<div class="pageWrapperLayout containerRelative">

				<?= '&copy; ' . date('Y') . ' CENTRAL GLAM SALON SPA'; ?>
				<span>
					Derechos reservados Design by <a href="www.ingenioart.com" target="blank"> INGENIOART </a>
				</span>

			</div> <!-- /.pageWrapperLayout containerRelative -->

		</section> <!-- /. -->
		
	</footer> <!-- /. -->

	<?php wp_footer(); ?>

	</div> <!-- /end sliderbar container -->

</body>
</html>
