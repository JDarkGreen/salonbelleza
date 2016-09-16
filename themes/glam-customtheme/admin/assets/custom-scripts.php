<?php  
/**
*  Cargar los archivos JS pero del administrador WP con sus respectivos estilos
**/

/* Add the media uploader script */
function load_admin_custom_enqueue() {

	//upload media
	wp_enqueue_media();

	//JQUERY UI
	wp_enqueue_script('wp-js-jqueryui', THEMEROOT . '/admin/assets/js/portbox/jquery-ui-1.10.3.custom.min.js', array('jquery' ), '1.10.3', true);

	/**
	* ESTILOS MODAL - portBox
	**/
	wp_enqueue_style( 'wp-css-portbox', THEMEROOT . "/admin/assets/css/portbox/portBox.css" );
	wp_enqueue_script('wp-js-portbox', THEMEROOT . '/admin/assets/js/portbox/portBox.slimscroll.min.js', array('jquery' ), '1.0', true);


	/**
	* CONFIGURACION DEL TEMA
	**/

	//configuraciones generales de acuerdo a las librerias usadas anteriormente
	wp_enqueue_style( 'wp-css-custom-theme-admin', THEMEROOT . "/admin/assets/css/custom-theme-admin.css" );
	wp_enqueue_script('wp-js-custom-theme-admin', THEMEROOT . '/admin/assets/js/custom-theme-admin.js', array('jquery' ), '', true);

}

add_action('admin_enqueue_scripts', 'load_admin_custom_enqueue');

?>