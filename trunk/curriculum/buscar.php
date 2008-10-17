<?php
$valor = $_POST['value'];
//eliminar espacios en blanco al principio y final
$cadena = trim($valor);
$con_mysql = mysql_connect('localhost','root','passwd');
if(!$con_mysql) {
	echo 'No se ha podido encontrar el servidor de datos';
	exit;
}
mysql_select_db('curriculum');
$select = mysql_query("select * from curriculum where rut like '$cadena%'");
echo '<ul>';
if(mysql_num_rows($select) == 0){
	echo '<li>No hay resultados</li>';
}else{
	for($a=0; $a<(mysql_num_rows($select)); $a++){
		$reg = mysql_fetch_array($select);
		echo '<li>'.$reg['rut'].'</li>';
	}
}
echo '</ul>';
?>