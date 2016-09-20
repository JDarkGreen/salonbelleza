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
						<img src="<?= IMAGES ?>/salon_logo.png" alt="<?php bloginfo('description') ?>" class="img-fluid d-block m-x-auto" /> <br />

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
						<h2 class="title-footer text-xs-center"> <?= __("Redes Sociales" , LANG ); ?></h2>

						<!-- Lista de Redes  -->
						<?php include( locate_template('partials/social/menu-social.php') ); ?>

					</div> <!-- /.itemFooter -->

				</div> <!-- /.col-xs-12 col-sm-4 -->

				<!-- Item Footer -->
				<div class="col-xs-12 col-sm-4">
					
					<div class="itemFooter">
						
						<!-- Título-->
						<h2 class="title-footer"> <?= __("Contacto" , LANG ); ?></h2>

						<!-- Espacio --> <br /> 

						<!-- Lista de Contacto  -->
						<ul class="menuContactoFooter">
							
							<!--  -->
							<li>
								<span>Tel.:</span>
								<?php  
									for ( $i=1 ;  $i <= 5 ;  $i++) 
									{ 
										$phone = isset($options['theme_phone_text_'.$i]) ? $options['theme_phone_text_'.$i] : '';

										echo $i !== 1 && !empty($phone) ? ' - ' : '';
										echo $phone;

									}
								?>
							</li>

							<!--  -->
							<li>
								<span>Email:</span>
								<?= isset($options['theme_email_text']) ? $options['theme_email_text'] : ''; ?>
							</li>

							<!--  -->
							<li>
								<span>Atención: </span>
								<?= isset($options['theme_atention_text']) ? $options['theme_atention_text'] : ''; ?>
							</li>

							<!-- Dirección -->
							<li>
								<?= isset($options['theme_address_text']) ? apply_filters( 'the_content' , $options['theme_address_text'] ) : ''; ?>
							</li>
							
						</ul> <!-- /.menuContactoFooter -->

						<!-- Espacio --> <br /> 

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

	<script> var url = "<?= THEMEROOT ?>"; </script>

	</div> <!-- /end sliderbar container -->

</body>
</html>
