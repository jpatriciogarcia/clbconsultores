<?php

require_once("../conexion.php");


if (isset($_GET['action']) ? $_GET['action'] == 'create' : false) {
	?>
	<form id="frm-create-empresa" action="<?php echo $_SERVER['PHP_SELF']; ?>">
	<input type="hidden" id="action" name="action" value="create-empresa" />
	<table>
	 <tr>
	  <th>Nombre</th>
	  <td><input type="text" name="nombre" id="nombre" class="required" /></td>
	 </tr>
	 <tr>
	  <th>Descripción</th>
	  <td><textarea name="descripcion" id="descripcion" class="required"></textarea></td>
	 </tr>
	 <tr>
	  <th>Mail</th>
	  <td><input type="text" name="mail" id="mail" class="required validate-email" /></td>
	 </tr>
	</table>
	<input type="button" onclick="saveForm('frm-create-empresa');" value="Grabar" />
	</form>
	<?php
	die();
}


if (isset($_POST['action']) ? $_POST['action'] == 'create-empresa' : false) {

    if ($Empresa->Load('nombre=?', array($_POST["nombre"]))) {
    	echo "<script>alert('Ya existe una empresa con el mismo nombre.');</script>";
    	die();
    }

    $Empresa = new Empresa();
    $Empresa->nombre = $_POST["nombre"];
    $Empresa->descripcion = $_POST["descripcion"];
    $Empresa->mail = $_POST["mail"];
    $Empresa->Save();

    echo "<script>Modalbox.hide();getUrl('empresa.php', 'div-main');</script>";
    die();
}



$html_listado_empresas = "";

foreach ($Empresa->Find('1=? order by nombre', array(1)) as $Empresa) {
    $html_listado_empresas .= "\n <tr>"
    ."\n  <th><a href=\"javascript:;\" onclick=\"deleteEmpresa()\">[X]</a></th>"
    ."\n  <th><a href=\"javascript:;\" onclick=\"updateEmpresa()\">[E]</a></th>"
    ."\n  <td>{$Empresa->nombre}</td>";
}


?>

<p><a href="javascript:;" onclick="Modalbox.show('empresa.php?action=create', {title: 'Agregar Empresa'}); return false;">Agregar</a></p>

<table>
 <tr>
  <th>Eliminar</th>
  <th>Editar</th>
  <th>Empresa</th>
 </tr>
 <?php echo $html_listado_empresas; ?>
</table>
