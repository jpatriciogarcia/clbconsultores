<?php

require_once("../conexion.php");


$_GET['action'] = isset($_POST['action']) ? $_POST['action'] : $_GET['action'];


// MOSTRAR FORMULARIO PARA INGRESAR/MODIFICAR DATOS
if (isset($_GET['action']) ? $_GET['action'] == 'edit' : false) {

    $id = isset($_POST["id"]) ? $_POST["id"] : 0;
    $Puesto = new Puesto();
    $Puesto->Load('id=?', array($id));


	?>
	<input type="hidden" id="action" name="action" value="save" />
	<input type="hidden" id="id" name="id" value="<?php echo $Puesto->id; ?>" />
	<table>
	 <tr>
	  <th>Empresa</th>
	  <td>
          <select name="empresa" id="empresa" class="validate-selection">
          <option selected="selected">Seleccione</option>
          <?php
          foreach($Empresa->Find('1=?', array(1)) as $Empresa){
              if($Empresa->id == $Puesto->empresa){
                  echo '<option value="'.$Empresa->id.'" selected="selected">'.htmlentities($Empresa->nombre).'</option>';
              }else{
                  echo '<option value="'.$Empresa->id.'">'.htmlentities($Empresa->nombre).'</option>';
              }
          }
		  ?>
          </select></td>
	 </tr>
	 <tr>
	  <th>Puesto</th>
	  <td><input type="text" name="puesto" id="puesto" class="required" value="<?php echo $Puesto->puesto; ?>" /></td>
	 </tr>
	 <tr>
	  <th>Descripción</th>
	  <td><textarea name="descripcion" id="descripcion" class="required"><?php echo $Puesto->descripcion; ?></textarea></td>
	 </tr>
	 </tr>
	 <tr>
	  <th>Vacantes</th>
	  <td><input type="text" name="vacantes" id="vacantes" class="required validate-digits" value="<?php echo $Puesto->vacantes; ?>" /></td>
	 </tr>
	</table>
	<input type="button" onclick="sendLink(<?php echo $Puesto->id; ?>);" value="Enviar Link" />
	<input type="button" onclick="saveForm('frm-create-puesto');" value="Grabar" />
	<input type="button" onclick="getUrl('puesto.php', 'div-main');" value="Cancelar" />
	<?php
	die();
}


// GRABAR LOS DATOS
if (isset($_POST['action']) ? $_POST['action'] == 'save' : false) {

    if ($Puesto->Load('nombre=?', array($_POST["nombre"])) && $_POST["id"]==0) {
        echo "<script>alert('Ya existe una puesto con el mismo nombre.');</script>";
        die();
    }

    $Puesto = new Puesto();
    $Puesto->Load('id=?', array($_POST["id"]));
    $Puesto->empresa = $_POST["empresa"];
    $Puesto->puesto = $_POST["puesto"];
    $Puesto->descripcion = $_POST["descripcion"];
    $Puesto->vacantes = $_POST["vacantes"];
    $Puesto->Save();

    echo "<script>getUrl('puesto.php', 'div-main');</script>";
    die();
}


// ELIMINAR LOS DATOS
if (isset($_POST['action']) ? $_POST['action'] == 'delete' : false) {

    $Puesto = new Puesto();
    $Puesto->Load('id=?', array($_POST['id']));
    $Puesto->Delete();

    echo "<script>getUrl('puesto.php', 'div-main');alert('Puesto eliminado.')</script>";
    die();
}



// ENVIAR LINK
if (isset($_POST['action']) ? $_POST['action'] == 'link' : false) {
    $Puesto->Load('id=?', array($_POST['puesto']));
    $Empresa->Load('id=?', array($Puesto->empresa));

    $message = '
    <html>
    <head>
      <title>CLB Consultores</title>
    </head>
    <body>
      <p>¡Nueva campaña de empleo en CLB Consultores!</p>
      <table>
        <tr>
          <th>Link</th>
          <td>:</td>
          <td>' . '' . '</td>
        </tr>
      </table>
    </body>
    </html>
    ';

    $to = $Empresa->nombre . " <" . $Empresa->mail . ">";
    echo $to;
    $to="jpatriciogarcia@gmail.com";
    $subject = "CLB Consultores";

    // Para enviar correo HTML, la cabecera Content-type debe definirse
    $additional_headers  = 'MIME-Version: 1.0' . "\r\n";
    $additional_headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

    // Cabeceras adicionales
    //$additional_headers .= 'To: Contacto CLB Consultores <' . $to . '>' . "\r\n";
    $additional_headers .= 'From: CLB Consultores <info@clbconsultores.cl>' . "\r\n";
    $additional_headers .= 'Bcc: JGG <jpatriciogarcia@gmail.com>' . "\r\n";

    mail($to, $subject, $message, $additional_headers);

    echo "<script>alert('Link enviado.');</script>";
    die();
}


// LISTAR EMPRESAS
$html_listado_puestos = "";

foreach ($Puesto->Find('1=? order by empresa', array(1)) as $Puesto) {
    $html_listado_puestos .= "\n <tr>"
    ."\n  <th><a href=\"javascript:;\" onclick=\"deletePuesto(".$Puesto->id.")\">[X]</a></th>"
    ."\n  <th><a href=\"javascript:;\" onclick=\"updatePuesto(".$Puesto->id.")\">[E]</a></th>"
    ."\n  <td>{$Puesto->puesto}</td>";
}


?>

<form id="frm-create-puesto" action="<?php echo $_SERVER['PHP_SELF']; ?>">
<div id="div-form">
  <p><a href="javascript:;" onclick="getUrl('puesto.php?action=edit', 'div-form'); return false;">Agregar</a></p>
</div>
</form>

<table>
 <tr>
  <th>Eliminar</th>
  <th>Editar</th>
  <th>Puesto</th>
 </tr>
 <?php echo $html_listado_puestos; ?>
</table>
