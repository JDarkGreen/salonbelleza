<?php  /* Template Name: Página Contacto: Template */?>
<?php  
	global $post;
	
	//Obtener Header
	get_header(); 

	//Extraer todas las opciones de personalización
	$options = get_option("theme_settings");

	//Incluir opciones de banner
	$banner       = $post;

	include('partials/banner-top-page.php');

?>

<!-- Wrapper de Contenido / Contenedor Layout -->
<div class="pageWrapperLayout containerRelative">

	<!-- Wrapper de Contenido -->
	<div class="pageContentLayout">

		<div class="row">

			<!-- Seccion de Datos -->
			<div class="col-xs-5">
	
				<section class="pageContacto__data">
					
					<!-- Título -->
					<h2 class="titleCommon__section"> <?= __('Datos' , LANG ); ?> </h2>

					<!-- Menu -->
					<ul class="menuContacto">	
						
						<!-- Dirección -->
						<?php if( isset($options['theme_address_text']) && !empty($options['theme_address_text']) ) : ?>
							<li>
								<!-- Icon -->
								<i class="fa fa-map-marker icon-contact" aria-hidden="true"></i>
								<?= apply_filters( 'the_content' , $options['theme_address_text'] ); ?>
							</li>
						<?php endif; ?>	

						<!-- Teléfono -->
						<li>
							<!-- Icon -->
							<i class="fa fa-phone icon-contact" aria-hidden="true"></i>
							<?php  
								for ( $i=1 ;  $i <= 5 ;  $i++) 
								{ 
									$phone = isset($options['theme_phone_text_'.$i]) ? $options['theme_phone_text_'.$i] : '';

									echo $i !== 1 && !empty($phone) ? ' - ' : '';
									echo $phone;

								}
							?>
						</li>

						<!-- Email -->
						<?php if( isset($options['theme_email_text']) && !empty($options['theme_email_text']) ) : ?>
							<li>
								<!-- Icon -->
								<i class="fa fa-envelope icon-contact" aria-hidden="true"></i>
								<span class="featured-text"> <em> <?= $options['theme_email_text']; ?> </em> </span>
							</li>
						<?php endif; ?>	

						<!-- Atención -->
						<li class="more-space">
							<span>Atención: </span>
							<?= isset($options['theme_atention_text']) ? $options['theme_atention_text'] : ''; ?>
						</li>

						<!-- Redes Sociales -->
						<li class="more-space">
							<span>Redes Sociales: </span>	
							<?php include( locate_template('partials/social/menu-social-contacto.php') ); ?>
						</li>

					</ul> <!-- 	/.menuContacto -->

				</section> <!-- /.pageContacto__data -->
				
			</div> <!-- /.col-xs-5 -->

			<div class="col-xs-12 col-sm-7">	
				<?php if( has_post_thumbnail( $post->ID ) ) : ?>
					<?= get_the_post_thumbnail( $post->ID , 'full' , array('class'=>'img-fluid d-block m-x-auto') ); ?>
				<?php endif; ?>
			</div> <!-- /.col-xs-12 col-sm-7 -->
			
		</div> <!-- /.row -->

	</div> <!-- /.pageContentLayout -->

</div> <!-- /.pageWrapperLayout containerRelative -->


<!-- Sección Formulario  -->
<section class="pageContacto__formulary">

	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="pageWrapperLayout containerRelative">
	
		<!-- Título -->
		<h2 class="titleCommon__section text-xs-center"> <?= __('Escríbenos tus consultas' , LANG ); ?> </h2>

		<!-- Formulario -->
		<form id="form-contacto" action="" class="pageContacto__form" method="POST">

			<!-- Nombre -->
			<div class="pageContacto__form__group">
				<label for="input_name" class="sr-only">Nombres </label>
				<input type="text" id="input_name" name="input_name" placeholder="<?php _e( 'Nombres', LANG ); ?>" required />
			</div> <!-- /.pageContacto__form__group -->

			<!-- Dirección -->
			<div class="pageContacto__form__group">
				<label for="input_address" class="sr-only">Dirección </label>
				<input type="text" id="input_address" name="input_address" placeholder="<?php _e( 'Dirección', LANG ); ?>" required />
			</div> <!-- /.pageContacto__form__group -->

			<div class="row">

				<div class="col-xs-12 col-sm-6">

					<!-- Email -->
					<div class="pageContacto__form__group">
						<label for="input_email" class="sr-only">E-mail</label>
						<input type="email" id="input_email" name="input_email" placeholder="<?php _e( 'E-mail', LANG ); ?>" data-parsley-trigger="change" required="" data-parsley-type-message="Escribe un email válido"/>
					</div> <!-- /.pageContacto__form__group -->		
					
				</div> <!--  -->

				<div class="col-xs-12 col-sm-6">

					<!-- Teléfono -->
					<div class="pageContacto__form__group">
						<label for="input_phone" class="sr-only">Teléfono</label>
						<input type="text" id="input_phone" name="input_phone" placeholder="Teléfono" data-parsley-type='digits' data-parsley-type-message="Solo debe contener números" required="" />
					</div> <!-- /.pageContacto__form__group -->
					
				</div> <!-- col-xs-12 col-sm-6 -->
				
			</div> <!-- /.row -->

			<!-- Texto -->
			<div class="pageContacto__form__group">
				<label for="input_message" class="sr-only"> Mensaje</label>
				<textarea name="input_message" id="input_message" placeholder="<?php _e( 'Su Mensaje', LANG ); ?>" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Necesitas más de 20 caracteres" data-parsley-validation-threshold="10"></textarea>
			</div> <!-- /.pageContacto__form__group -->

			<button type="submit" id="send-form" class="btnSendEmail text-uppercase pull-xs-right">
				<?php _e( 'enviar' , LANG ); ?>
			</button> <!-- /.btn__send-form -->

			<!-- Limpiar Floats --> <div class="clearfix"></div>

		</form> <!-- /.pageContacto__form -->	

	</div> <!-- /.pageWrapperLayout containerRelative -->	

</section> <!-- /.pageContacto__formulary -->

<!-- Sección de Mapa -->
<?php //Verificar si el mapa está seteado o no
	  if( exist_map() ) : ?>

<div id="canvas-map"></div>

<?php endif; ?>


<!-- Script Google Mapa -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNMUy9phyQwIbQgX3VujkkoV26-LxjbG0"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>


<?php //Verificar si el mapa está seteado o no
	  if( exist_map() ) : ?>

	<script type="text/javascript">	
		<?php  
			$lat = $options['theme_lat_coord'];
			$lng = $options['theme_long_coord'];

			$zoom_mapa = isset( $options['theme_zoom_mapa'] ) && !empty( $options['theme_zoom_mapa'] ) ? $options['theme_zoom_mapa'] : 16;
		?>

	    var map;
	    var lat = <?= $lat ?>;
	    var lng = <?= $lng ?>;

	    function initialize() {
	      //crear mapa
	      map = new google.maps.Map(document.getElementById('canvas-map'), {
	        center: {lat: lat, lng: lng},
	        zoom  : <?= $zoom_mapa; ?>,
	      });
	      //infowindow
	      <?php  

	      	$default_markup = "";

	      	if ( isset($options['theme_text_markup_map']) and !empty($options['theme_text_markup_map']) ) :
	      		$contenido_markup = trim( $options['theme_text_markup_map'] );

	      		$contenido_markup = !empty($contenido_markup) ? apply_filters("the_content" , $options['theme_text_markup_map']  ) : $default_markup;
	      	else:

	      		$contenido_markup = $default_markup;

	      	endif;
	      ?>

	      var contenido_markup = <?= json_encode( $contenido_markup ) ?>;

	      var infowindow  = new google.maps.InfoWindow({
	        content: contenido_markup
	      });
	      //icono
	      //var icono = "<?= IMAGES ?>/icon/contacto_icono_mapa.jpg";
	      //crear marcador
	      marker = new google.maps.Marker({
	        map      : map,
	        draggable: false,
	        animation: google.maps.Animation.DROP,
	        position : {lat: lat, lng: lng},
	        title    : "<?php _e(bloginfo('name') , LANG )?>",
	        //icon     : "<?= IMAGES . '/icon/icon_map.png' ?>",
	      });
	      //marker.addListener('click', toggleBounce);
	      marker.addListener('click', function() {
	        infowindow.open( map, marker);
	      });
	    }
	    google.maps.event.addDomListener(window, "load", initialize);
	</script>

<?php endif; ?>

<!-- Footer -->
<?php get_footer(); ?>

