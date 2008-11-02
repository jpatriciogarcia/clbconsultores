<?php
require_once("conexion.php");

if ( isset($_GET['uniqueid']) ) {
    if (!$Puesto->Load('uniqueid=?', array($_GET['uniqueid']))) {
        die("Este link no existe");
    }
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Curriculum</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="scriptaculous/lib/prototype.js"></script>
<script type="text/javascript" src="scriptaculous/src/scriptaculous.js"></script>
<script type="text/javascript" src="scriptaculous/src/effects.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

</head>
<body>

<div id="loading" style="display: none;"><img src="imagenes/cargando.gif" />Cargando...</div>

<p><a href="javascript:;" onclick="cargar('nuevo',1)">Nuevo</a> - <a href="javascript:;" onclick="cargar('modificar')">Modificar</a></p>
<form id="curriculum" name="curriculum" method="post" action="guardar.php">
  <div id="curriculum"></div>
</form>
<p>&nbsp;</p>
</body>
</html>