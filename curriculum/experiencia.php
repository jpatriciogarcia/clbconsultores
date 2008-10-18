<?php
require_once("conexion.php");


// Cargar las experiencias
if ( ! isset($_POST["id"]) and ! isset($_POST["anolaboral1"]) ) {

    $curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));

    list($_anolaboral1, $anolaboral2) = split("-", $curriculum->anolaboral);
    $_anolaboral1 = explode(";", $_anolaboral1);
    $_anolaboral2 = explode(";", $_anolaboral2);
    $_cargo = explode(";", $curriculum->cargo);
    $_empresa = explode(";", $curriculum->empresa);
    $_objetivos = explode(";", $curriculum->objetivos);
    $_logros = explode(";", $curriculum->logros);

    foreach ($_anolaboral1 as $k => $v) {
        if (trim($_anolaboral1[$k])) {
            $id = md5($_anolaboral1[$k].$_anolaboral2[$k].$_cargo[$k].$_empresa[$k].$_objetivos[$k].$_logros[$k]);

            $_SESSION["curriculum"]["add_experiencia"][$id] = array(
            "anolaboral1" => $_anolaboral1[$k],
            "anolaboral2" => $_anolaboral[$k],
            "cargo" => $_cargo[$k],
            "empresa" => $_empresa[$k],
            "objetivos" => $_objetivos[$k],
            "logros" => $_logros[$k]
            );
        }
    }

}

// Eliminar una experiencia
if (isset($_POST["id"])) {
    unset($_SESSION["curriculum"]["add_experiencia"][$_POST["id"]]);
}

// Agregar una experiencia
if (isset($_POST["anolaboral1"])) {
    $id = md5($_POST["anolaboral1"].$_POST["anolaboral2"].$_POST["cargo"].$_POST["empresa"].$_POST["objetivos"].$_POST["logros"]);

    $_SESSION["curriculum"]["add_experiencia"][$id] = array(
    "anolaboral1" => $_POST["anolaboral1"],
    "anolaboral2" => $_POST["anolaboral2"],
    "cargo" => str_replace(";", " ", $_POST["cargo"]),
    "empresa" => str_replace(";", " ", $_POST["empresa"]),
    "objetivos" => str_replace(";", " ", $_POST["objetivos"]),
    "logros" => str_replace(";", " ", $_POST["logros"])
    );
}

// Grabar experiencias
$_anolaboral1 = $_anolaboral2 = $_cargo = $_empresa = $_objetivos = $_logros = array();
$curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));
if (sizeof($_SESSION["curriculum"]["add_experiencia"])) {
    foreach ($_SESSION["curriculum"]["add_experiencia"] as $v) {
        $_anolaboral1[] = $v["anolaboral1"];
        $_anolaboral2[] = $v["anolaboral2"];
        $_cargo[] = $v["cargo"];
        $_empresa[] = $v["empresa"];
        $_objetivos[] = $v["objetivos"];
        $_logros[] = $v["logros"];
    }
}

$curriculum->anolaboral = implode(";", $_anolaboral1) . "-" . implode(";", $_anolaboral2);
$curriculum->cargo = implode(";", $_cargo);
$curriculum->empresa = implode(";", $_empresa);
$curriculum->objetivos = implode(";", $_objetivos);
$curriculum->logros = implode(";", $_logros);
$curriculum->Save();


// Listar experiencias
if (sizeof($_SESSION["curriculum"]["add_experiencia"])) {
?>


<table cellspacing="5">
 <tr>
  <th></th>
  <th>Año</th>
  <th>Cargo</th>
  <th>Empresa</th>
  <th>Objetivos del cargo</th>
  <th>Logros</th>
 </tr>
 <?php
 foreach ($_SESSION["curriculum"]["add_experiencia"] as $k => $v) {

     echo "\n<tr>"
     . "\n <td><a href=\"javascript:;\" onclick=\"javascript:EliminarExperiencia('{$k}');\">[X]</a></td>"
     . "\n <td>{$v["anolaboral1"]}</td>"
     . "\n <td>{$v["anolaboral2"]}</td>"
     . "\n <td>{$v["cargo"]}</td>"
     . "\n <td>{$v["empresa"]}</td>"
     . "\n <td>{$v["objetivos"]}</td>"
     . "\n <td>{$v["logros"]}</td>";
 }
    ?>
</table>
<?php
}
