<?php

require_once("../conexion.php");


$_GET['action'] = isset($_POST['action']) ? $_POST['action'] : $_GET['action'];


// MOSTRAR FORMULARIO PARA INGRESAR/MODIFICAR DATOS
if (isset($_GET['action']) ? $_GET['action'] == 'edit' : false) {

    $id = isset($_POST["id"]) ? $_POST["id"] : 0;
    $Empresa = new Empresa();
    $Empresa->Load('id=?', array($id));


	?>
	<input type="hidden" id="action" name="action" value="save" />
	<input type="hidden" id="id" name="id" value="<?php echo $Empresa->id; ?>" />
	<table>
	 <tr>
	  <th>Nombre</th>
	  <td><input type="text" name="nombre" id="nombre" class="required" value="<?php echo $Empresa->nombre; ?>" /></td>
	 </tr>
	 <tr>
	  <th>Descripción</th>
	  <td><textarea name="descripcion" id="descripcion" class="required"><?php echo $Empresa->descripcion; ?></textarea></td>
	 </tr>
	 <tr>
	  <th>Mail</th>
	  <td><input type="text" name="mail" id="mail" class="required validate-email" value="<?php echo $Empresa->mail; ?>" /></td>
	 </tr>
	</table>
	<input type="button" onclick="saveForm('frm-create-empresa');" value="Grabar" />
	<input type="button" onclick="getUrl('empresa.php', 'div-main');" value="Cancelar" />
	<?php
	die();
}


// GRABAR LOS DATOS
if (isset($_POST['action']) ? $_POST['action'] == 'save' : false) {

    if ($Empresa->Load('nombre=?', array($_POST["nombre"])) && $_POST["id"]==0) {
        echo "<script>alert('Ya existe una empresa con el mismo nombre.');</script>";
        die();
    }

    $Empresa = new Empresa();
    $Empresa->Load('id=?', array($_POST["id"]));
    $Empresa->nombre = $_POST["nombre"];
    $Empresa->descripcion = $_POST["descripcion"];
    $Empresa->mail = $_POST["mail"];
    $Empresa->Save();

    echo "<script>getUrl('empresa.php', 'div-main');</script>";
    die();
}


// ELIMINAR LOS DATOS
if (isset($_POST['action']) ? $_POST['action'] == 'delete' : false) {

    $Empresa = new Empresa();
    $Empresa->Load('id=?', array($_POST['id']));
    $Empresa->Delete();

    echo "<script>getUrl('empresa.php', 'div-main');alert('Empresa eliminada.')</script>";
    die();
}



// LISTAR EMPRESAS
$html_listado_empresas = "";

foreach ($Empresa->Find('1=? order by nombre', array(1)) as $Empresa) {
    $html_listado_empresas .= "\n <tr>"
    ."\n  <th><a href=\"javascript:;\" onclick=\"deleteEmpresa(".$Empresa->id.")\">[X]</a></th>"
    ."\n  <th><a href=\"javascript:;\" onclick=\"updateEmpresa(".$Empresa->id.")\">[E]</a></th>"
    ."\n  <td>{$Empresa->nombre}</td>";
}


?>

<form id="frm-create-empresa" action="<?php echo $_SERVER['PHP_SELF']; ?>">
<div id="div-form">
  <p><a href="javascript:;" onclick="getUrl('empresa.php?action=edit', 'div-form'); return false;">Agregar</a></p>
</div>
</form>

<table>
 <tr>
  <th>Eliminar</th>
  <th>Editar</th>
  <th>Empresa</th>
 </tr>
 <?php echo $html_listado_empresas; ?>
</table>
