<?php  

/***
*---------------------------------------
* FUNCIONES PERSONALIZADAS 
*---------------------------------------
***/

$options = get_option("theme_settings");

/**
* Definir si el mapa existe o no
*
**/

function exist_map()
{
	global $options;

	if( isset($options['theme_lat_coord']) && !empty($options['theme_lat_coord']) && isset($options['theme_long_coord']) && !empty($options['theme_long_coord']) ) :

	return true;
	
	else: return false; endif;
}

?>