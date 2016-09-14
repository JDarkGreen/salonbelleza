<?php
/**
 * Theme Glam funciones y definiciones
 *
 * Configurar el tema y proporciona algunas funciones auxiliares , que se utilizan en el
 * Tema como etiquetas de plantillas personalizadas . Otros están unidos a la acción y el filtro
 * Ganchos en WordPress para cambiar la funcionalidad básica .
 *
 * Cuando se utiliza un tema niño puede anular ciertas funciones (aquellos envueltos
 * En un function_exists ( ) llamada) definiéndolos por primera vez en su tema del niño
 * Archivo functions.php . archivo functions.php del tema de los niños está incluido antes
 * Archivo del tema de los padres , por lo que se utilizarían las funciones de temas niño.
 *
 * @link https://codex.wordpress.org/Theme_Development
 * @link https://codex.wordpress.org/Child_Themes
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are
 * instead attached to a filter or action hook.
 *
 * For more information on hooks, actions, and filters,
 * {@link https://codex.wordpress.org/Plugin_API}
 */

/**
 * Definiendo Constantes
*/
include('functions/constants.php');


/******************************************************************/
/* 	Archivos de Condiguración en el Administrador */
/*******************************************************************/

/*-----------------
* Agregar nuevas columnas 
*------------------*/
require('admin/custom/new-columns.php');


/*******************************************************************/
/* 	Archivos de Condiguración en el Tema  */
/*******************************************************************/

/*-----------------
 * Registrar Menus
*------------------*/
require('functions/register-menu.php');

/*-----------------
/* Agregando nuevos tipos de post
*------------------*/
require('functions/register-type-posts.php');

/*-----------------
/* Registrar Metabox
*------------------*/

require('functions/register-metabox.php');


/*-----------------
/* Soporte de tema
*------------------*/
require('functions/support-formats.php');

/*-----------------
/* Cargar archivos JS 
*------------------*/

require_once('functions/scripts-js.php');



