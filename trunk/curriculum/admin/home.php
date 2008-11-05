<?php
require_once("../conexion.php");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administración</title>

<script type="text/javascript" src="js/scriptaculous/lib/prototype.js"></script>
<script type="text/javascript" src="js/scriptaculous/src/scriptaculous.js"></script>
<script type="text/javascript" src="js/scriptaculous/src/effects.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

<link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>

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
      <a href="ingreso_socio.php">Nuevo Curriculum</a> / <a href="completa.php">Lista completa </a>/ <a href=	"al_dia.php">Campa&ntilde;as </a>/ <a href="no_pagan.php">Busqueda Avanzada</a></p>
  </div>


    <div id="buscador">
   	  <table width="450" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><input name="patron" type="text" size="50" /></td>
          <td>Buscar</td>
        </tr>
        <tr>
          <td class="titulo_busquedaavanzada"><a href="busqueda_avanzada.html">Búsqueda Avanzada</a></td>
          <td>&nbsp;</td>
        </tr>
   	  </table>
 	 </div>

    <div id="imprimir">
      <table width="250" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td>Exportar Excel</td>
          <td><img src="images/printer1.png" /></td>
        </tr>
      </table>
      </div>

      <p>&nbsp;</p>
      <p>&nbsp; </p>

      <div id="mensajetabla">
    <p>Ordenados por Apellido Paterno<br>(Mostrando registros desde 1 a 25, de un total de 538)</p>
    </div>

    <div id="marcotabla">
    <!-- listado de curriculums -->
    <?php include_once('listado.php') ?>
    </div>

    <p align="center">
    Saltar a P&aacute;g. :
    1&nbsp;		<a href="completa.php?c=2&p=2">2</a>&nbsp;
      <a href="completa.php?c=2&p=3">3</a>&nbsp;
      <a href="completa.php?c=2&p=4">4</a>&nbsp;
      <a href="completa.php?c=2&p=5">5</a>&nbsp;
      <a href="completa.php?c=2&p=6">6</a>&nbsp;
      <a href="completa.php?c=2&p=7">7</a>&nbsp;
      <a href="completa.php?c=2&p=8">8</a>&nbsp;
      <a href="completa.php?c=2&p=9">9</a>&nbsp;
      <a href="completa.php?c=2&p=10">10</a>&nbsp;
      <a href="completa.php?c=2&p=11">11</a>&nbsp;
      <a href="completa.php?c=2&p=12">12</a>&nbsp;
      <a href="completa.php?c=2&p=13">13</a>&nbsp;
      <a href="completa.php?c=2&p=14">14</a>&nbsp;
      <a href="completa.php?c=2&p=15">15</a>&nbsp;
      <a href="completa.php?c=2&p=16">16</a>&nbsp;
      <a href="completa.php?c=2&p=17">17</a>&nbsp;
      <a href="completa.php?c=2&p=18">18</a>&nbsp;
      <a href="completa.php?c=2&p=19">19</a>&nbsp;
      <a href="completa.php?c=2&p=20">20</a>&nbsp;
                    <a href="completa.php?c=2&p=21">21</a>&nbsp;
      <a href="completa.php?c=2&p=22">22</a>&nbsp;
  </p>
</div>
</body>
</html>
