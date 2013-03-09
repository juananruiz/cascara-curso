<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <title>{if $_nombre_pagina}{$_nombre_pagina} - {/if}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">

    <!-- Las hojas de estilo -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px hacen que el contenido nunca pise la barra de navegación superior */
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Librerías javascript
    ================================================== -->
    <!-- Deberían estar al final para que la carga sea más rápida -->
    <script src="js/jquery-1.8.0.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery.validate.min.js"></script>

    <!-- Imágenes para el favicon y para el touch icon de los móviles -->
    <link rel="shortcut icon" href="ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>

    {include file="menu_superior.tpl"}

    <div class="container-fluid">
      {if $auto_menu}
        {include file="$auto_menu"}
      {else}
        {include file="$plantilla"}
      {/if}
    </div>

    <footer class="footer">
      <div class="container">
        <div id="contact" class="span4">
          <ul>
            <li class="web">Dirección de Rercursos Humanos · http://recursoshumanos.us</li>
            <li class="phone">954 333 777</li>
            <li class="email"><a href="mailto:recursoshumanos@us.es">recursoshumanos@us.es</a></li>
          </ul>
        </div>
        <div id="footer_nav" class="span4">
          <span id="designed_by">Desarrollado y diseñado en la Universidad de Sevilla. Colabora: <a href="http://yvanpinto.com">Yvan Pinto</a></span> |
          <a href="#">Créditos</a> |
          <a href="#">Condiciones</a> |
          <a href="index.php?page=contactar">Contactar</a>
        </div>
      </div> <!-- /container -->
    </footer>

  </body>
</html>
