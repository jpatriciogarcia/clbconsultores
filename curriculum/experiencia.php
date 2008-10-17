<?php
require_once("conexion.php");

if (isset($_POST["anolaboral1"])) {
    $id = md5($_POST["anolaboral1"].$_POST["anolaboral2"].$_POST["cargo"].$_POST["empresa"].$_POST["objetivos"].$_POST["logros"]);

    $_SESSION["curriculum"]["add_experiencia"][$id] = array(
    "anolaboral1" => $_POST["anolaboral1"],
    "anolaboral2" => $_POST["anolaboral2"],
    "cargo" => $_POST["cargo"],
    "empresa" => $_POST["empresa"],
    "objetivos" => $_POST["objetivos"],
    "logros" => $_POST["logros"]
    );
}

if (isset($_POST["id"])) {
    unset($_SESSION["curriculum"]["add_experiencia"][$_POST["id"]]);
}

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