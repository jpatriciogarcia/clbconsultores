<?php
require_once("../conexion.php");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administración</title>

<script type="text/javascript" src="js/prototype.js"> </script>
<script type="text/javascript" src="js/effects.js"> </script>
<script type="text/javascript" src="js/window.js"> </script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

<link href="css/themes/default.css" rel="stylesheet" type="text/css" />
<link href="css/themes/mac_os_x.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css">

</head>

<body>
<div id="loading" style="display: none;"><img src="../imagenes/cargando.gif" />Cargando...</div>
<div id="marco">

	<div id="usuario">
      <p>Bienvenido <?php echo $_SESSION['nombre']; ?></p>
      	</div>

      <div id="cierresesion">
      <p><a href="javascript:;" onclick="javascript:LogOut();">Cerrar Sesión</a></p>
      </div>

  <div id="tituloprincipal">
    <p class="titulo_pagina">Sistema de Administración de Curriculums</p>
    </div>



  <div id="menu">
      <p class="titulo_menu">
      <a href="javascript:;" onclick=" NuevoCurriculum()">Nuevo Curriculum</a> / <a href="javascript:;" onclick="getUrl('listado.php', 'marcotabla')">Lista completa </a>/ <a href=	"javascript:;" onclick="getUrl('puesto.php', 'marcotabla')">Campa&ntilde;as </a>/ <a href="javascript:;" onclick="getUrl('busqueda_avanzada.php', 'marcotabla')">Busqueda Avanzada</a></p>
  </div>


    <div id="buscador">
   	  <table width="450" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><input name="patron" type="text" size="50" /></td>
          <td><img src="images/find.png" /></td>
        </tr>
        <tr>
          <td class="titulo_busquedaavanzada"></td>
          <td>&nbsp;</td>
        </tr>
   	  </table>
 	 </div>

    <div id="imprimir">
      <table width="250" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><img onclick="javascript:;listadoToExcel()" src="images/excel.png" /></td>
          <td><img onclick="javascript:;print()" src="images/printer1.png" /></td>
        </tr>
      </table>
      </div>

      <p>&nbsp;</p>
      <p>&nbsp; </p>


    <form id="form-main">
    <div id="marcotabla">

    <!-- listado de curriculums -->
    <?php include_once('listado.php') ?>

    </div>
    </form>

</div>
</body>
</html>
