<?php
require_once("conexion.php");
session_start();
//extract($_POST);

if($_POST["paso"]==2){ //guardar datos del paso1

    $rut = explode("-", $_POST['rut']);
    $_POST['rut'] = $rut[0];

    //si se ha ingresado un curriculum que ya existe
    if(!isset($_SESSION['curriculum']['rut']) && $curriculum->Load('rut=?', array($_POST['rut']))){
        header("Location: login.php?existe&rut=".$_POST['rut']."");
        exit();
    }
    //

    $_SESSION['curriculum']['rut'] = $_POST["rut"];
    $curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));

    if($curriculum->password==""){
        function password($longitud,$tipo="alfanumerico"){
            if($tipo=="alfanumerico"){
                $exp_reg="[^A-Z0-9]";
            }elseif($tipo=="numerico"){
                $exp_reg="[^0-9]";
            }
            return substr(eregi_replace($exp_reg, "", md5(rand())) .
            eregi_replace($exp_reg, "", md5(rand())) .
            eregi_replace($exp_reg, "", md5(rand())),
            0, $longitud);
        }
        $curriculum->password = password(10);
    }

    $curriculum->nombres = '';
    $curriculum->apellido1 = '';
    $curriculum->apellido2 = '';
    $curriculum->fnacimiento = '';
    $curriculum->genero = '';
    $curriculum->nacionalidad = '';
    $curriculum->direccion = '';
    $curriculum->region = '';
    $curriculum->provincia = '';
    $curriculum->comuna = '';
    $curriculum->acceso = 0;

    //son los del paso2
    ($curriculum->colegio != "") ? '' : $curriculum->colegio = '';
    ($curriculum->anoegresocolegio != "") ? '' : $curriculum->anoegresocolegio = '';
    ($curriculum->carrera != "") ? '' : $curriculum->carrera = '';
    ($curriculum->mencion != "") ? '' : $curriculum->mencion = '';
    ($curriculum->institucion != "") ? '' : $curriculum->institucion = '';
    ($curriculum->estadoestudio != "") ? '' : $curriculum->estadoestudio = '';
    ($curriculum->anoegresosuperior != "") ? '' : $curriculum->anoegresosuperior = '';
    //fin son los del paso2

    //son los del paso3
    ($curriculum->anolaboral != "") ? '' : $curriculum->anolaboral = '';
    ($curriculum->cargo != "") ? '' : $curriculum->cargo = '';
    ($curriculum->empresa != "") ? '' : $curriculum->empresa = '';
    ($curriculum->software != "") ? '' : $curriculum->software = '';
    ($curriculum->nivelsoftware != "") ? '' : $curriculum->nivelsoftware = '';
    ($curriculum->pretensionrenta != "") ? '' : $curriculum->pretensionrenta = '';
    ($curriculum->regionlaboral != "") ? '' : $curriculum->regionlaboral = '';
    ($curriculum->disponibilidad != "") ? '' : $curriculum->disponibilidad = '';
    //fin son los del paso3

    //guardar los datos del formulario paso1
    $curriculum->rut = $_POST["rut"];
    $curriculum->nombres = $_POST["nombres"];
    $curriculum->apellido1 = $_POST["apellido1"];
    $curriculum->apellido2 = $_POST["apellido2"];
    $curriculum->presentacion = $_POST["presentacion"];
    $curriculum->fnacimiento = $_POST["ano"]."-".$_POST["mes"]."-".$_POST["dia"];
    $curriculum->genero = $_POST["genero"];
    $curriculum->nacionalidad = $_POST["nacionalidad"];
    $curriculum->estadocivil = $_POST["estadocivil"];
    $curriculum->direccion = $_POST["direccion"];
    $curriculum->region = $_POST["region"];
    $curriculum->provincia = $_POST["provincia"];
    $curriculum->comuna = $_POST["comuna"];
    $curriculum->fonocasa = $_POST["fonocasa"];
    $curriculum->fonomovil = $_POST["fonomovil"];
    $curriculum->fonooficina = $_POST["fonooficina"];
    $curriculum->email = $_POST["email"];
    $curriculum->Save();
    include("paso2.php");

}else if($_POST["paso"]==3){ //guardar datos del paso2

    $curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));

    //son los del paso3
    ($curriculum->anolaboral != "") ? '' : $curriculum->anolaboral = '';
    ($curriculum->cargo != "") ? '' : $curriculum->cargo = '';
    ($curriculum->empresa != "") ? '' : $curriculum->empresa = '';
    ($curriculum->software != "") ? '' : $curriculum->software = '';
    ($curriculum->nivelsoftware != "") ? '' : $curriculum->nivelsoftware = '';
    ($curriculum->pretensionrenta != "") ? '' : $curriculum->pretensionrenta = '';
    ($curriculum->regionlaboral != "") ? '' : $curriculum->regionlaboral = '';
    ($curriculum->disponibilidad != "") ? '' : $curriculum->disponibilidad = '';
    //fin son los del paso3

    //guardar los datos del formulario paso2
    $curriculum->colegio = $_POST["colegio"];
    $curriculum->anoegresocolegio = $_POST["anoegresocolegio"];
    $curriculum->titulos = $_POST["titulos"];
    $curriculum->Save();

    $curriculum->carrera = "";
    $curriculum->mencion = "";
    $curriculum->institucion = "";
    $curriculum->estadoestudio = "";
    $curriculum->anoegresosuperior = "";

    if($_POST['volver']=='backpaso1'){
        include("paso1.php");
    }else{
        include("paso3.php");
    }

}else{ //guardar datos del paso3

    $curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));

    //guardar los datos del formulario paso3
    foreach ( $_SESSION["curriculum"]["add_experiencia"] as $v ) {
        // ( [anolaboral1] => 2008 [anolaboral2] => 2008 [cargo] => a [empresa] => a [objetivos] => a [logros] => a )
        $anolaboral1[] = $v["anolaboral1"];
        $anolaboral2[] = $v["anolaboral2"];
        $cargo[] = $v["cargo"];
        $empresa[] = $v["empresa"];
        $objetivos[] = $v["objetivos"];
        $logros[] = $v["logros"];
    }

    $curriculum->anolaboral = implode(";", $anolaboral1) . "-" . implode(";", $anolaboral2) ;
    $curriculum->cargo = implode(";", $cargo);
    $curriculum->empresa = implode(";", $empresa);
    $curriculum->objetivos = implode(";", $objetivos);
    $curriculum->logros = implode(";", $logros);
    $curriculum->software = $_POST["software"];
    $curriculum->nivelsoftware = $_POST["nivelsoftware"];

    //idiomas
    if(isset($_POST['ingles'])){
        $curriculum->ingles = 1;
        $curriculum->nivelingles = $_POST["nivelingles"];
    }else if($curriculum->ingles!=0){
        $curriculum->ingles = 0;
        $curriculum->nivelingles = NULL;
    }
    if(isset($_POST['frances'])){
        $curriculum->frances = 1;
        $curriculum->nivelfrances = $_POST["nivelfrances"];
    }else if($curriculum->frances!=0){
        $curriculum->frances = 0;
        $curriculum->nivelfrances = NULL;
    }
    if(isset($_POST['aleman'])){
        $curriculum->aleman = 1;
        $curriculum->nivelaleman = $_POST["nivelaleman"];
    }else if($curriculum->aleman!=0){
        $curriculum->aleman = 0;
        $curriculum->nivelaleman = NULL;
    }
    if(isset($_POST['espanol'])){
        $curriculum->espanol = 1;
        $curriculum->nivelespanol = $_POST["nivelespanol"];
    }else if($curriculum->espanol!=0){
        $curriculum->espanol = 0;
        $curriculum->nivelespanol = NULL;
    }
    if(isset($_POST['italiano'])){
        $curriculum->italiano = 1;
        $curriculum->nivelitaliano = $_POST["nivelitaliano"];
    }else if($curriculum->italiano!=0){
        $curriculum->italiano = 0;
        $curriculum->nivelitaliano = NULL;
    }
    if(isset($_POST['otro'])){
        $curriculum->otro = $_POST["otrotxt"];
        $curriculum->nivelotro = $_POST["nivelotro"];
    }else if($curriculum->otro!=''){
        $curriculum->otro = NULL;
        $curriculum->nivelotro = NULL;
    }
    //fin idiomas

    $curriculum->experienciaextra = $_POST["experienciaextra"];
    $curriculum->pretensionrenta = $_POST["pretensionrenta"];
    $curriculum->regionlaboral = $_POST["regionlaboral"];
    $curriculum->disponibilidad = $_POST["disponibilidad"];
    $curriculum->areainteres = $_POST["areainteres"];
    $curriculum->Save();

    $curriculum->anolaboral = "";
    $curriculum->cargo = "";
    $curriculum->empresa = "";
    $curriculum->objetivos = "";
    $curriculum->logros = "";

    if($_POST['volver']=='backpaso2'){
        include("paso2.php");
    }else{
        include("termino.php");
    }

}

// GUARDAR
foreach($_SESSION['curriculum'] as $k => $v) {
    $curriculum->$k = $v;
}


