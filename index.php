<?php 
//-------------------------------------------------------------------------------
// Proyecto Cáscara
// Archivo: index.php
// Desarrolladores: Juanan Ruiz <juanan@us.es>, Jesús Martin <jjmc@us.es>
//-------------------------------------------------------------------------------
// Descripcion: Esta es la página que carga a todas las demas en su seno maternal 
//-------------------------------------------------------------------------------

// Durante el desarrollo queremos que se vean los errores
ini_set('display_errors', '1');
error_reporting(E_ALL);

// Carga las librerías necesarias
include_once('../app_code/app_config.php');
include_once('../../cascara_core/lib/adodb5/adodb.inc.php');
include_once('../../cascara_core/lib/adodb5/adodb-active-record.inc.php');
include_once('../../cascara_core/lib/smarty/Smarty.class.php');
include_once('../../cascara_core/function/sanitize.php');

// Carga las clases automaticamente
spl_autoload_register('__autoload');
function __autoload($class_name) 
{
	if (file_exists('../class/'.$class_name.'.php'))
	{	
		require_once('../class/'.$class_name.'.php');
	}
}

// Creamos y configuramos el objeto $smarty
$smarty = new Smarty();
$smarty->setTemplateDir('../app_code');
$smarty->setCompileDir('../templates_c'); 
$smarty->setConfigDir('../configs'); 
$smarty->setCacheDir('../cache'); 

// Conectamos a los datos con ADODB y ActiveRecord 
$adodb = NewADOConnection('mysql://'.CC_DB_LOGIN.':'.CC_DB_CLAVE.'@'.CC_DB_HOST.'/'.CC_DB_DATABASE);
ADOdb_Active_Record::SetDatabaseAdapter($adodb);
$adodb->EXECUTE("set names 'utf8'"); //todas las conversaciones con la BD serán en UTF8

// Crea una sesión con un identificador encriptado para evitar ataques
$session_key = substr(md5(CC_DIR_BASE), 0, 8);
@session_name('CC_SESSID' . $session_key);
@ini_set('url_rewriter.tags', '');
@ini_set('session.use_trans_sid', 0);
if(!@session_id())
{
  @ini_set('url_rewriter.tags', '');
  @ini_set('session.use_trans_sid', 0);
  @session_start();
}

// Comprueba si el usuario ha iniciado sesión
if (isset($_SESSION['usuario'])) 
{
	$usuario = new usuario();
	$usuario = $_SESSION['usuario'];
	$smarty->assign('_usuario',$usuario);
}
else
{
  //header("location:index.php?page=" . CC_TIPO_LOGIN);
  //exit;
}

if (isset($_GET['page']))
{
  $page = sanitize($_GET['page'], 2);
}
else
{
  $page = "inicio";
}

// Definimos $plantilla en blanco para que se comporte como variable global
$plantilla = '';

// Carga la página solicitada ($_GET['page']) o la pagina por defecto ('inicio' en nuestro caso)
if(file_exists("../app_code/$page.php"))
{
	require_once("../app_code/$page.php");
}
else if(file_exists("../app_code/$page.tpl"))
{
  $plantilla = "$page.tpl";
}
else if(file_exists("../app_code/$page/inicio.php"))
{
	require_once("../app_code/$page/inicio.php");
  $page = "$page/inicio";
  $plantilla = "$page.tpl";
}
else if(file_exists("../app_code/$page/inicio.tpl"))
{
  $plantilla = "$page/inicio.tpl";
}
else
{
	$smarty->assign('error', "Error 404: no encontramos la página que ha solicitado."); 
  require_once("../app_code/error.php");
}

// Si tras cargar el controlador no tenemos plantilla intentamos cargar por defecto
// una que se llame como el controlador, si no, vamos a error
if ($plantilla == '')
{
  $plantilla = $page . ".tpl";
}

if (!file_exists("../app_code/$plantilla"))
{
  $plantilla = "error_plantilla.tpl";
}

// Si ajax está a true pasa del layout
if (isset($_REQUEST['ajax']) AND $_REQUEST['ajax'] == 'true')
{
	$smarty->display("$plantilla");
} 
// En condiciones normales cargamos layout y auto_menú si existe
else
{
	$smarty->assign("plantilla", $plantilla);
  $smarty->assign("auto_menu", false);
  // Si hemos llamado a un subdirectorio comprueba si hay que cargar auto_menu
  if($subdirectorio = array_shift(explode("/",$page)))
  {
    if(file_exists("../app_code/$subdirectorio/auto_menu.tpl"))
    {
      $smarty->assign("auto_menu", "$subdirectorio/auto_menu.tpl");
    }
  }
	$smarty->display('layout.tpl'); 
}
?>
