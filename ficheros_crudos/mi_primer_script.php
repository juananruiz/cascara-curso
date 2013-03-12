<!DOCTYPE html>
<html>
  <head>
    <link type='text/css' rel='stylesheet' href='mi_primera_hoja_de_estilo.css'/>
    <meta charset = "utf-8">
    <title>¡Comenzando con PHP!</title>
  </head>
  <body>
    <div class="wrapper">
      <header>
        <h1>
        <?php
          $welcome = "¡Comenzando con PHP!";
          echo $welcome;
        ?>
        </h1>
        <p>Lo importante en este curso es pasarlo bien y salir con ganas de aprender</p>
        <hr />
      </header>
      <section>
        <p><strong>Generando una lista:</strong>
          <img src="../media/logo-php.jpeg" style="float:right; margin-left:25px" alt="logotipo php"/>
          <?php
            for ($number = 1; $number <= 10; $number++) 
            {
              if ($number <= 9) 
              {
                echo $number . ", ";
              } 
              else 
              {
                echo $number . "!";
              }
            } 
          ?>
        </p>
        <p><strong>Cosas que puedes hacer:</strong>
          <ul>
          <?php
            $langs = array("Consultar bases de datos", "Enviar cookies", "Procesar formularios", "Construir páginas dinámicas");
            foreach ($langs as $lang) 
            {
              echo "<li>$lang</li>";
            }
            unset($lang);
          ?>
          </ul>
        </p>
      </section>
      <footer>
        <hr />
        <p><a href="http://creativecommons.org/licenses/by/3.0/es/deed.es"><img 
          src="../media/creative_commons_by.png" alt="Los contenidos de esta web están sujetos a una licencia de 
          Creative Commons si no se indica lo contrario" /></a> 
          Curso de Cáscara
        </p>
      </footer>
    </div><!-- .wrapper -->
  </body>
</html>
