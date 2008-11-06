<?php
require_once("../conexion.php");

?>

    <div id="mensajetabla">
    <p>Ordenados por Apellido Paterno<br>(Mostrando registros desde 1 a 25, de un total de 538)</p>
    </div>

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
    ?>
    <tr>
        <td><?php echo $Curriculum->apellido1; ?></td>
        <td><?php echo $Curriculum->apellido2; ?></td>
        <td><?php echo $Curriculum->nombres; ?></td>
        <td><?php echo $region->nombre; ?></td>
        <td><?php echo $comuna->nombre; ?></td>
        <td><div align="center"><a href="editar.php?rut=<?php echo $Curriculum->rut; ?>">Editar</a></div></td>
    <?php
}
?>
</table>

    <p align="center">
    Saltar a Página :
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
