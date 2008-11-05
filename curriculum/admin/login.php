<?php

require_once("../conexion.php");


//Empresas que solicitan personal
class Usuario extends ADOdb_Active_Record{
    var $_table = 'mgg_usuarios';
}
$Usuario = new Usuario();



// Validar acceso al sistema
if ($Usuario->Load('username=? and password=?', array($_POST['username'], md5($_POST['password'])))) {
    if ($Usuario->tipo == 'admin') {
        $_SESSION['username'] = $Usuario->username;
        $_SESSION['nombre'] = $Usuario->nombre;
        $_SESSION['tipo'] = $Usuario->tipo;
        echo "<script>window.location.href='home.php'</script>";
    }
}
else {
    echo "<script>alert('Datos incorrectos');</script>";
}


