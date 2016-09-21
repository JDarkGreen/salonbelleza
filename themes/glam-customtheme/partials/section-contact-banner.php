<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA EL BANNER HACIA EL CONTACTO
***/

$page_contacto = get_page_by_title('contactenos');

?>

<section id="sectionBannerContacto" class="containerRelative">
	<div class="content-text m-x-auto containerFlex containerAlignContent text-xs-center">

		<!-- Titulo -->
		<h2 class="text-capitalize"> <?= __("Contáctate con Nosotros" , LANG ); ?></h2>
		<!-- Boton -->
		<a href="<?= get_permalink( $page_contacto->ID ); ?>" class="btn-show-more"> Click AQUÍ </a>

	</div> <!-- /.content-text -->
</section> <!-- /.sectionBannerContacto -->