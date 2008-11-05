<?php

require_once("../conexion.php");


?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administración</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/modalbox.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/scriptaculous/lib/prototype.js"></script>
<script type="text/javascript" src="js/scriptaculous/src/scriptaculous.js"></script>
<script type="text/javascript" src="js/scriptaculous/src/effects.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript" src="js/scripts.js"></script>

</head>
<body>

<div id="loading" style="display: none;"><img src="img/cargando.gif" />Cargando...</div>

<p><a href="javascript:;" onclick="getUrl('empresa.php', 'div-main')">Empresas</a> - <a href="javascript:;" onclick="getUrl('puesto.php', 'div-main')">Puestos</a></p>
  <div id="div-main"></div>
<p>&nbsp;</p>
</body>
</html>
