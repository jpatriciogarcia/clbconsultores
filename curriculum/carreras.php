<?php
require_once("conexion.php");

// Cargar las carreras
if ( ! isset($_POST["id"]) and ! isset($_POST["carrera"]) ) {

    $curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));
    $_carrera = explode(";", $curriculum->carrera);
    $_mencion = explode(";", $curriculum->mencion);
    $_institucion = explode(";", $curriculum->institucion);
    $_estadoestudio = explode(";", $curriculum->estadoestudio);
    $_anoegresosuperior = explode(";", $curriculum->anoegresosuperior);

    foreach ($_carrera as $k => $v) {
        if (trim($_carrera[$k])) {
            $id = md5($_carrera[$k].$_mencion[$k].$_institucion[$k].$_estadoestudio[$k].$_anoegresosuperior[$k]);

            $_SESSION["curriculum"]["add_carreras"][$id] = array(
            "carrera" => $_carrera[$k],
            "mencion" => $_mencion[$k],
            "institucion" => $_institucion[$k],
            "estadoestudio" => $_estadoestudio[$k],
            "anoegresosuperior" => $_anoegresosuperior[$k]
            );
        }
    }

}

// Eliminar una carrera
if (isset($_POST["id"])) {
    unset($_SESSION["curriculum"]["add_carreras"][$_POST["id"]]);
}

// Agregar una carrera
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

// Grabar carreras
$_carrera = $_mencion = $_institucion = $_estadoestudio = $_anoegresosuperior = array();
$curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));
foreach ($_SESSION["curriculum"]["add_carreras"] as $v) {
    $_carrera[] = $v["carrera"];
    $_mencion[] = str_replace(";", " ", $v["mencion"]);
    $_institucion[] = $v["institucion"];
    $_estadoestudio[] = $v["estadoestudio"];
    $_anoegresosuperior[] = $v["anoegresosuperior"];
}

$curriculum->carrera = implode(";", $_carrera);
$curriculum->mencion = implode(";", $_mencion);
$curriculum->institucion = implode(";", $_institucion);
$curriculum->estadoestudio = implode(";", $_estadoestudio);
$curriculum->anoegresosuperior = implode(";", $_anoegresosuperior);
$curriculum->Save();


// Listar carreras
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
