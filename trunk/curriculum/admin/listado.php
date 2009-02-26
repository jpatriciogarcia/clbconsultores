<?php
require_once ("../conexion.php");

if ($_GET ['exportar']) {
	header ( "Content-type: application/vnd.ms-excel" );
}

$page = isset ( $_GET ['page'] ) ? $_GET ['page'] : 1;
$sql = "select * from {$curriculum->_table} order by apellido1";
$Curriculum = $conexion->PageExecute ( $sql, RECORDS_BY_PAGE, $page );

$Pagination = & new GenericEasyPagination ( $page, RECORDS_BY_PAGE );
$Pagination->setTotalRecords ( $Curriculum->_maxRecordCount );

?>
<div id="mensajetabla">
<p>Ordenados por Apellido Paterno<br>(Mostrando registros desde <?php
echo $Pagination->getListCurrentRecords ();
?>, de un total de <?php
echo $Curriculum->_maxRecordCount;
?>)</p>
</div>

<table width="100%" border="1" align="center" cellpadding="0"
	cellspacing="0" class="estilo1">
	<tr>
		<td align="center">RUT</td>
		<td align="center">Apellido Paterno</td>
		<td align="center">Apellido Materno</td>
		<td align="center">Nombre</td>
		<td align="center">Region</td>
		<td align="center">Comuna</td>
		<td align="center">Disponibilidad</td>
		<td align="center">Fecha</td>
		<td align="center">Editar</td>
		<td align="center">Eliminar</td>
	</tr>

<?php

while ( ! $Curriculum->EOF ) {
	$region->Load ( 'id=?', array ($Curriculum->fields ['region'] ) );
	$comuna->Load ( 'id=?', array ($Curriculum->fields ['comuna'] ) );
	?>
    <tr>
		<td><?php
	echo ($Curriculum->fields ['rut']);
	?></td>
		<td><?php
	echo ($Curriculum->fields ['apellido1']);
	?></td>
		<td><?php
	echo ($Curriculum->fields ['apellido2']);
	?></td>
		<td><?php
	echo ($Curriculum->fields ['nombres']);
	?></td>
		<td><?php
	echo htmlentities ( $region->nombre );
	?></td>
		<td><?php
	echo htmlentities ( $comuna->nombre );
	?></td>
		<td><?php
	echo ($Curriculum->fields ['disponibilidad']);
	?></td>
		<td><?php
	echo ($Curriculum->fields ['modificacion']);
	?></td>
		<td>
		<div align="center"><a href="javascript:;"
			onclick="EditCurriculum(<?php
	echo $Curriculum->fields ['rut'];
	?>)">Editar</a></div>
		</td>
		<td>
		<div align="center"><a href="javascript:;"
			onclick="DeleteCurriculum(<?php
	echo $Curriculum->fields ['rut'];
	?>)">Eliminar</a></div>
		</td>
    <?php
	$Curriculum->MoveNext ();
}
?>












</table>

<p align="center">
    Saltar a Página :<?php
				echo $Pagination->getCurrentPages ();
				?>
    </p>
