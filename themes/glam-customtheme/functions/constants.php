<?php  

/**
  * Definiendo las constantes para el tema
  *
  *
***/

/*********************************************************/
/* 	Define Constantes */
/*********************************************************/

define('THEMEROOT', get_stylesheet_directory_uri() );

define('IMAGES', THEMEROOT.'/assets/images');

define('LANG', 'this-theme-framework');

#Extraer todas las opciones de personalización
$options = get_option("theme_settings");

#Nuevas Constantes

#CONSTANTE FACEBOOK LINK
$link_fb = isset($options['theme_social_fb_text']) && !empty($options['theme_social_fb_text']) ? $options['theme_social_fb_text'] : '#';

define('LINK_FACEBOOK' , $link_fb );


?>