<?php
require_once("conexion.php");
$curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));
?>
<p>su contrase&ntilde;a de modificaci&oacute;n es <?php echo $curriculum->password; ?></p>