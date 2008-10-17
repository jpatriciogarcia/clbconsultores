<?php
session_start();
require_once("conexion.php");
$curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));
$comuna->Load('id=?', array($curriculum->comuna));
$region->Load('id=?', array($curriculum->region));

//digito verificador rut
function dvrut($r){
	$s=1;
	for($m=0;$r!=0;$r/=10){
		$s=($s+$r%10*(9-$m++%6))%11;
	}
	return chr($s?$s+47:75);
}

if($_SESSION['curriculum']['acceso'] == 0){ ?>
<p>Bienvenido: <?php echo $curriculum->nombres." ".$curriculum->apellido1." ".$curriculum->apellido2; ?></p>
<p>¿Qué desea hacer?<br />
Imprimir mi curriculum<br />
<a href="javascript:;" onclick="cargar('nuevo',0)">Modificar mi curriculum</a></p>
<table width="100%" border="0">
  <tr>
    <td><p align="center">CURRICULUM VITAE</p>
      <p>ANTECEDENTES PERSONALES</p>
      <table width="100%" border="0">
        <tr>
          <td>Nombre</td>
          <td>: <?php echo $curriculum->nombres." ".$curriculum->apellido1." ".$curriculum->apellido2; ?></td>
        </tr>
        <tr>
          <td>Cédula de identidad</td>
          <td>: <?php echo number_format($curriculum->rut, 0, ",", ".")."-".dvrut($curriculum->rut); ?></td>
        </tr>
        <tr>
          <td>Fecha de nacimiento</td>
          <td>: <?php echo date("d/m/Y",$curriculum->fnacimiento); ?></td>
        </tr>
        <tr>
          <td>Nacionalidad</td>
          <td>: <?php echo $curriculum->nacionalidad; ?></td>
        </tr>
        <tr>
          <td>Estado civil</td>
          <td>: <?php echo $curriculum->estadocivil; ?></td>
        </tr>
        <tr>
          <td>Dirección</td>
          <td>: <?php echo $curriculum->direccion." ".$comuna->nombre.", ".$region->nombre; ?></td>
        </tr>
        <?php if($curriculum->fonocasa!=""){ ?>
        <tr>
          <td>Teléfono</td>
          <td>: <?php echo $curriculum->fonocasa; ?></td>
        </tr>
        <?php } ?>
      </table>      
    <p>ANTECEDENTES ACADÉMICOS</p></td>
  </tr>
</table>
<p>&nbsp;</p>
<?php }else if($_SESSION['curriculum']['acceso'] == 1){ ?>
<p>Bienvenido <strong>Administrador</strong></p>
<p>No ta funcionando el header(&quot;Location: modificar.php&quot;) en login.php!!</p>
<input type="text" id="autorelleno" name="texto_auto"/>
<input type="button" name="Buscarbtn" id="Buscarbtn" value="Buscar" />
<span id="spinner" style="display: none">
<img src="images/spinner.gif" alt="Consultando…" />
</span>
<div id="lista_opciones" class="autorelleno">
</div>
<script>
new Ajax.Autocompleter("autorelleno", "lista_opciones", "buscar.php", {method: "post", paramName: "value", minChars: 1, indicator: "spinner"});
</script>
<?php } ?>
<p>[<a href="javascript:;" onclick="logout()">Desconectarse</a>] </p>