<?php
require_once("conexion.php");

if($_POST["accion"]=="provincias"){
    echo '<select class="validate-selection" name="provincia" onchange="combo_direccion(\'comunas\',this.value)">';
    echo '<option selected="selected">Seleccione</option>';
    foreach($provincia->Find('relacion=?', array($_POST["codigo"])) as $nombre_provincia){
        echo '<option value="'.$nombre_provincia->id.'">'.htmlentities($nombre_provincia->nombre).'</option>';
    }
    echo '</select>';
}else if($_POST["accion"]=="comunas"){
    echo '<select class="validate-selection" name="comuna">';
    echo '<option selected="selected">Seleccione</option>';
    foreach($comuna->Find('relacion=?', array($_POST["codigo"])) as $nombre_comuna){
        echo '<option value="'.$nombre_comuna->id.'">'.htmlentities($nombre_comuna->nombre).'</option>';
    }
    echo '</select>';
}
?>
