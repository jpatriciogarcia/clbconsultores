<?php
require_once("../conexion.php");



?>

<table width="90%" border="1" align="center" cellpadding="0" cellspacing="0" class="estilo1">

            <td width="17%" valign="top"><a href="completa.php?p=1&c=2">Apellido Paterno</a></td>
            <td width="17%" valign="top"><a href="completa.php?p=1&c=3">Apellido Materno</a></td>
            <td width="14%" valign="top"><div align="center" class="style10"><a href="completa.php?p=1&c=4" class="estilo1">Nombre</a></div></td>
            <td width="21%" valign="top"><div align="center">Region</div>	</td>
            <td width="21%" valign="top">Comuna</td>
            <td width="17%" valign="top"><div align="center" class="style7">&nbsp;</div></td>
          </tr>

<?php

foreach ($curriculum->Find('1=? Order By apellido1', array(1)) as $Curriculum) {
    $region->Load('id=?', array($Curriculum->region));
    $comuna->Load('id=?', array($Curriculum->comuna));
    echo "\n<tr>"
    . "\n <td>{$Curriculum->apellido1}</td>"
    . "\n <td>{$Curriculum->apellido2}</td>"
    . "\n <td>{$Curriculum->nombres}</td>"
    . "\n <td>{$region->nombre}</td>"
    . "\n <td>{$comuna->nombre}</td>"
    . "\n <td><div align=\"center\"><a href=\"editar.php?rut={$Curriculum->rut}\">Editar</a></div></td>"
    ;

}

?>

</table>