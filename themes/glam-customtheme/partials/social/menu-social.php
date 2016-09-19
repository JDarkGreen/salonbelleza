<?php  
/**
  * ARCHIVO PARTIAL QUE MUESTRA LAS REDES SOCIALES
  *
***/

//Extraer todas las opciones de personalización
$options = get_option("theme_settings");

?>

<ul id="socialLinksMenu" class="text-xs-center">
	
	<!-- Facebook -->
	<?php if( defined('LINK_FACEBOOK') && constant('LINK_FACEBOOK') !== "" ): ?>

		<li>
			<a href="<?= constant('LINK_FACEBOOK'); ?>" target="_blank" class="icon-social">
				<i class="fa fa-facebook" aria-hidden="true"></i>
			</a>
		</li>

	<?php endif; ?>	

	<!-- Instagram -->
	<?php if( isset($options['theme_social_instagram_text']) && !empty($options['theme_social_instagram_text']) ): ?>

		<li>
			<a href="<?= $options['theme_social_instagram_text']; ?>" target="_blank" class="icon-social">
				<i class="fa fa-instagram" aria-hidden="true"></i>
			</a>
		</li>

	<?php endif; ?>
	
	<!-- Twitter -->
	<?php if( isset($options['theme_social_twitter_text']) && !empty($options['theme_social_twitter_text']) ): ?>

		<li>
			<a href="<?= $options['theme_social_twitter_text']; ?>" target="_blank" class="icon-social">
				<i class="fa fa-twitter" aria-hidden="true"></i>
			</a>
		</li>

	<?php endif; ?>
	
</ul> <!-- /.socialLinksMenu -->