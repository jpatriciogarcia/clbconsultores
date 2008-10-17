<?php
require_once("conexion.php");
session_start();

if(isset($_SESSION['curriculum']['acceso'])){
	header("Location: modificar.php");
	exit();
}

if(isset($_POST['dologin'])){
	if($curriculum->Load('rut=? and password=?', array($_POST['rut'], $_POST['pass']))){
		$_SESSION['curriculum']['rut'] = $curriculum->rut;
		$_SESSION['curriculum']['acceso'] = $curriculum->acceso;
		header("Location: modificar.php");
	}else{
		header("Location: login.php?errorlogin");
	}
}

if(isset($_GET['errorlogin'])){
	echo '<table width="100%" border="0"><tr><td>';
	echo 'No se ha podido conectar, compruebe sus datos';
	echo '</td></tr></table>';
}else if(isset($_GET['rut'])){
	echo '<table width="100%" border="0"><tr><td>';
	echo 'El rut ingresado ya existe, si desea modificar sus datos escriba su contraseña más abajo';
	echo '</td></tr></table>';
	//digito verificador rut
	function dvrut($r){
		$s=1;
		for($m=0;$r!=0;$r/=10){
			$s=($s+$r%10*(9-$m++%6))%11;
		}
		return chr($s?$s+47:75);
	}
	$extrarut = '-'.dvrut($_GET['rut']);
}
?>
<table width="100%" border="0">
  <tr>
    <td><table width="100%" border="0">
      <tr>
        <td>RUT</td>
        <td><input name="rut" type="text" class="required validate-rut" id="rut" value="<?php echo $_GET['rut'].$extrarut; ?>" onkeypress="return ingresarut(event)">
          (Ej.: 12345678-9)</td>
      </tr>
      <tr>
        <td>Contraseña</td>
        <td><input name="pass" type="password" class="required" id="pass" value="03e966c680"></td>
      </tr>
    </table>
    <br>
    <input type="button" name="botonlogin" id="botonlogin" value="Entrar" onclick="login()">
    <input name="dologin" type="hidden" id="dologin" value="si" /></td>
  </tr>
</table>