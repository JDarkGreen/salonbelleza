<?php  
/**
  * Archivo Parcial Despliega EL FACEBOOK FAN PAGE PLuGiN
 **/

#Extraer todas las opciones de personalización
$options = get_option("theme_settings");

?>


<section id="facebookContainer">

	<div id="fb-root"></div>
	
	<script>(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.7";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));</script>

	
	<div class="fb-page" data-href="<?= LINK_FACEBOOK ?>" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="<?= LINK_FACEBOOK ?>" class="fb-xfbml-parse-ignore"><a href="<?= LINK_FACEBOOK ?>">Central Glam</a></blockquote></div>



</section> <!-- /. -->