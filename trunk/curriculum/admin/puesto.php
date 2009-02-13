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
	<input type="button" onclick="addCampaign();" value="Grabar" />
	<input type="button" onclick="getUrl('puesto.php', 'marcotabla');" value="Cancelar" />
	<?php
	die();
}


// GRABAR LOS DATOS
if (isset($_POST['action']) ? $_POST['action'] == 'save' : false) {

    if ($Puesto->Load('puesto=?', array($_POST["puesto"])) && $_POST["id"]==0) {
        echo "<script>alert('Ya existe una puesto con el mismo nombre.');</script>";
        die();
    }

    $Puesto = new Puesto();

    if ($Puesto->Load('id=?', array($_POST["id"]))) {
        $Puesto->empresa = $_POST["empresa"];
        $Puesto->puesto = $_POST["puesto"];
        $Puesto->descripcion = $_POST["descripcion"];
        $Puesto->vacantes = $_POST["vacantes"];
    }
    else {
        $Puesto->empresa = $_POST["empresa"];
        $Puesto->puesto = $_POST["puesto"];
        $Puesto->descripcion = $_POST["descripcion"];
        $Puesto->vacantes = $_POST["vacantes"];
        $Puesto->uniqueid = '0';
        $Puesto->Save();

        $Puesto->uniqueid = md5($_POST["empresa"].$Puesto->id);
    }

    $Puesto->Save();

    echo "<script>getUrl('puesto.php', 'marcotabla');</script>";
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
          <td><a href="' . $_SERVER['SERVER_NAME'] . '/curriculum/?uniqueid=' . md5($Empresa->id.$Puesto->id) . '">' . $_SERVER['SERVER_NAME'] . '/curriculum/?uniqueid=' . md5($Empresa->id.$Puesto->id) . '</a></td>
        </tr>
      </table>
    </body>
    </html>
    ';

    $mail             = new PHPMailer();
    $mail->IsSMTP();
    $mail->SMTPAuth   = true;                  // enable SMTP authentication
    $mail->SMTPSecure = "ssl";                 // sets the prefix to the servier
    $mail->Host       = "smtp.gmail.com";      // sets GMAIL as the SMTP server
    $mail->Port       = 465;                   // set the SMTP port for the GMAIL server

    $mail->Username   = "clbconsultores@gmail.com";  // GMAIL username
    $mail->Password   = "password2008";            // GMAIL password

    $mail->AddReplyTo("info@clbconsultores.cl","CLB Consultores");

    $mail->From       = "info@clbconsultores.cl";
    $mail->FromName   = "CLB Consultores";

    $mail->Subject    = "CLB Consultores";

    //$mail->Body       = "Hi,<br>This is the HTML BODY<br>";                      //HTML Body
    $mail->AltBody    = "To view the message, please use an HTML compatible email viewer!"; // optional, comment out and test
    $mail->WordWrap   = 50; // set word wrap

    $mail->MsgHTML($message);
    $mail->AddAddress($Empresa->mail, $Empresa->nombre);
    $mail->IsHTML(true); // send as HTML

    if(!$mail->Send()) {
        echo "<script>alert('Mailer Error.');</script>";
    } else {
        echo "<script>alert('Link enviado.');</script>";
    }

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

<div id="div-form">
  <p><a href="javascript:;" onclick="getUrl('puesto.php?action=edit', 'div-form'); return false;">Agregar</a></p>
</div>

    <table width="90%" border="1" align="center" cellpadding="0" cellspacing="0" class="estilo1">

            <td width="17%" valign="top">Eliminar</td>
            <td width="17%" valign="top">Editar</td>
            <td width="14%" valign="top">Puesto</td>
          </tr>
 <?php echo $html_listado_puestos; ?>
</table>
