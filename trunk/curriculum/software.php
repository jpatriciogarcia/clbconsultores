<?php
require_once("conexion.php");


// Cargar las experiencias
if ( ! isset($_POST["id"]) and ! isset($_POST["software"]) ) {

    $curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));

    $_software = explode(";", $curriculum->software);
    $_nivelsoftware = explode(";", $curriculum->nivelsoftware);

    foreach ($_software as $k => $v) {
        if (trim($_software[$k])) {
            $id = md5($_software[$k].$_nivelsoftware[$k]);

            $_SESSION["curriculum"]["add_software"][$id] = array(
            "software" => $_software[$k],
            "nivelsoftware" => $_nivelsoftware[$k]
            );
        }
    }

}

// Eliminar una experiencia
if (isset($_POST["id"])) {
    unset($_SESSION["curriculum"]["add_software"][$_POST["id"]]);
}

// Agregar una experiencia
if (isset($_POST["software"])) {
    $id = md5($_POST["software"].$_POST["nivelsoftware"]);

    $_SESSION["curriculum"]["add_software"][$id] = array(
    "software" => $_POST["software"],
    "nivelsoftware" => $_POST["nivelsoftware"]
    );
}

// Grabar experiencias
$_software = $_nivelsoftware = array();
$curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));
if (sizeof($_SESSION["curriculum"]["add_software"])) {
    foreach ($_SESSION["curriculum"]["add_software"] as $v) {
        $_software[] = $v["software"];
        $_nivelsoftware[] = $v["nivelsoftware"];
    }
}

$curriculum->software = implode(";", $_software);
$curriculum->nivelsoftware = implode(";", $_nivelsoftware);
$curriculum->Save();


// Listar experiencias
if (sizeof($_SESSION["curriculum"]["add_software"])) {
?>


<table cellspacing="5">
 <tr>
  <th></th>
  <th>Software</th>
  <th>Nivel</th>
 </tr>
 <?php
 foreach ($_SESSION["curriculum"]["add_software"] as $k => $v) {

     echo "\n<tr>"
     . "\n <td><a href=\"javascript:;\" onclick=\"javascript:EliminarSoftware('{$k}');\">[X]</a></td>"
     . "\n <td>{$v["software"]}</td>"
     . "\n <td>{$v["nivelsoftware"]}</td>";
 }
    ?>
</table>
<?php
}
