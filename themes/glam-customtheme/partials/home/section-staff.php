<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA EL STAFF DE LA EMPRESA
***/

?>

<section id="sectionStaff" class="text-xs-center">
	
	<!-- Título -->
	<h2 class="titleCommon__section"> Nuestro Staff </h2>
	<!-- Subtitulo -->
	<h3 class="subtitleCommon__section"> 
		<span class="decoration"> // </span>
		
		El equipo de profesionales
	</h3>

	<!-- Wrapper de Contenido / Contenedor Layout -->
	<div class="pageWrapperLayout">
		
		<div class="content-staff containerFlex">
			
			<?php  
				#Obtener todos los miembros del Staff
				$args = array(
					'post_status'    => 'publish',
					'post_type'      => 'theme-staff',
					'posts_per_page' => -1,
				); 

				$staff = get_posts( $args );

				foreach( $staff as $person ):
			?> 
				<!--  Item  -->
				<article class="itemStaffPreview">	
					<!-- Imagen -->
					<figure class="containerRelative">

					   <?= has_post_thumbnail( $person->ID ) ? get_the_post_thumbnail( $person->ID , 'full' , array('class'=>'img-fluid m-x-auto d-block') ) : '<img src="https://unsplash.it/780">' ?>

					</figure> <!-- /. -->

					<!-- Nombre	--> <h2 class="text-capitalize"> <?= $person->post_title; ?> </h2>

					<!-- Cargo o texto -->
					<h3 class="" > <span><?= $person->post_content; ?></span> </h3>

				</article> <!-- /.itemStaffPreview -->
			
			<?php endforeach; ?>

		</div> <!-- /.content-staff -->

	</div> <!-- /.pageWrapperLayout -->

</section> <!-- /#sectionStaff -->