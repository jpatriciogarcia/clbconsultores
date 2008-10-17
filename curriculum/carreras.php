<?php
require_once("conexion.php");

if (isset($_POST["carrera"])) {
    $id = md5($_POST["carrera"].$_POST["mencion"].$_POST["institucion"].$_POST["estadoestudio"].$_POST["anoegresosuperior"]);

    $_SESSION["curriculum"]["add_carreras"][$id] = array(
    "carrera" => $_POST["carrera"],
    "mencion" => $_POST["mencion"],
    "institucion" => $_POST["institucion"],
    "estadoestudio" => $_POST["estadoestudio"],
    "anoegresosuperior" => $_POST["anoegresosuperior"]
    );
}

if (isset($_POST["id"])) {
    unset($_SESSION["curriculum"]["add_carreras"][$_POST["id"]]);
}


if (sizeof($_SESSION["curriculum"]["add_carreras"])) {
?>
<table cellspacing="5">
 <tr>
  <th></th>
  <th>Carrera</th>
  <th>Mención</th>
  <th>Institución</th>
  <th>Estado de estudio</th>
  <th>Año de egreso</th>
 </tr>
 <?php
 foreach ($_SESSION["curriculum"]["add_carreras"] as $k => $v) {

     $carrera->Load("id=?", array($v["carrera"]));
     $institucion->Load("id=?", array($v["institucion"]));

     echo "\n<tr>"
     . "\n <td><a href=\"javascript:;\" onclick=\"javascript:EliminarCarrera('{$k}');\">[X]</a></td>"
     . "\n <td>" . htmlentities($carrera->nombre) . "</td>"
     . "\n <td>{$v["mencion"]}</td>"
     . "\n <td>" . htmlentities($institucion->nombre) . "</td>"
     . "\n <td>{$v["estadoestudio"]}</td>"
     . "\n <td>{$v["anoegresosuperior"]}</td>";
 }
 ?>
</table>
<?php
}
