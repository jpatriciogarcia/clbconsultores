<?php
session_start();
require_once('adodb/adodb.inc.php');
require_once('adodb/adodb-active-record.inc.php');

$conexion = NewADOConnection('mysql://clbconsultores:clb72164@localhost/clbconsultores_cl_clbconsultores');
//$conexion->debug = true;
ADOdb_Active_Record::SetDatabaseAdapter($conexion);

class Curriculum extends ADOdb_Active_Record{
    var $_table = 'mgg_curriculum';
}
$curriculum = new Curriculum();

//regiones
class Region extends ADOdb_Active_Record{
    var $_table = 'mgg_regiones';
}
$region = new Region();

//provincias
class Provincia extends ADOdb_Active_Record{
    var $_table = 'mgg_provincias';
}
$provincia = new Provincia();

//comunas
class Comuna extends ADOdb_Active_Record{
    var $_table = 'mgg_comunas';
}
$comuna = new Comuna();

//carreras
class Carrera extends ADOdb_Active_Record{
    var $_table = 'mgg_carreras';
}
$carrera = new Carrera();

//instituciones de educacion
class Institucion extends ADOdb_Active_Record{
    var $_table = 'mgg_instituciones';
}
$institucion = new Institucion();
