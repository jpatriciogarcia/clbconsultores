<?php
require_once("conexion.php");
if($_POST['nuevo']==1){
	include('logout.php');
}else{
	$curriculum->Load('rut=?', array($_SESSION['curriculum']['rut']));
	//digito verificador rut
	function dvrut($r){
		$s=1;
		for($m=0;$r!=0;$r/=10){
			$s=($s+$r%10*(9-$m++%6))%11;
		}
		return chr($s?$s+47:75);
	}
	$extrarut = '-'.dvrut($curriculum->rut);
}
?>
<table width="100%" border="0">
  <tr>
    <td><table width="100%" border="0">
      <tr>
        <td bgcolor="#FFCC00">Presentaci&oacute;n personal</td>
      </tr>
      <tr>
        <td><p>
          <textarea name="presentacion" cols="45" rows="5" wrap="virtual" id="presentacion"><?php echo $curriculum->presentacion; ?></textarea>
        </p>          </td>
      </tr>

    </table>
      <table width="100%" border="0">
        <tr>
          <td colspan="2" bgcolor="#FFCC00">Datos personales</td>
        </tr>
        <tr>
          <td>RUT*</td>
          <td><input class="required validate-rut" name="rut" type="text" id="rut" maxlength="20" onkeypress="return ingresarut(event)" value="<?php echo $curriculum->rut.$extrarut; ?>" /> (Ej.: 12345678-9)</td>
        </tr>
        <tr>
          <td>Nombres*</td>
          <td><input name="nombres" type="text" class="required" id="nombres" value="<?php echo $curriculum->nombres; ?>" /></td>
        </tr>
        <tr>
          <td>Primer apellido*</td>
          <td><input name="apellido1" type="text" class="required" id="apellido1" value="<?php echo $curriculum->apellido1; ?>" /></td>
        </tr>
        <tr>
          <td>Segundo apellido*</td>
          <td><input name="apellido2" type="text" class="required" id="apellido2" value="<?php echo $curriculum->apellido2; ?>" /></td>
        </tr>
        <tr>
          <td>Fecha de nacimiento*</td>
          <td><span class="tablaBlanca">
            <select class="validate-selection" name="dia">
              <option selected="selected">D&iacute;a</option>
              <?php
			  	$fechadb = $curriculum->fnacimiento;
				list($anodb, $mesdb, $diadb) = split('[/.-]', $fechadb);
			  	for($d=1; $d<=31; $d++){
					if($diadb==$d){
						echo '<option value="'.$d.'" selected="selected">'.$d.'</option>';
					}else{
			  			echo '<option value="'.$d.'">'.$d.'</option>';
					}
				}
			  ?>
            </select>
/
<select class="validate-selection" name="mes">
  <option selected="selected">Mes</option>
	<?php
		$meses = array(
			"1"=>"Enero",
			"2"=>"Febrero",
			"3"=>"Marzo",
			"4"=>"Abril",
			"5"=>"Mayo",
			"6"=>"Junio",
			"7"=>"Julio",
			"8"=>"Agosto",
			"9"=>"Septiembre",
			"10"=>"Octubre",
			"11"=>"Noviembre",
			"12"=>"Diciembre"
		);
		foreach($meses as $clave => $nombre){
			if($mesdb==$clave){
				echo '<option value="'.$clave.'" selected="selected">'.$nombre.'</option>';
			}else{
				echo '<option value="'.$clave.'">'.$nombre.'</option>';
			}
		}
	?>
</select>
/
<select class="validate-selection" name="ano">
  <option selected="selected">A&ntilde;o</option>
  <?php
	for($a=2001; $a>=1900; $a--){
		if($anodb==$a){
			echo '<option value="'.$a.'" selected="selected">'.$a.'</option>';
		}else{
			echo '<option value="'.$a.'">'.$a.'</option>';
		}
	}
  ?>
</select>
          </span></td>
        </tr>
        <tr>
          <td>G&eacute;nero*</td>
          <td><div>
            <input name="genero" type="radio" id="radio" value="Masculino" <?php if($curriculum->genero=="Masculino"){echo 'checked="CHECKED"';} ?>/>
            Masculino
  <input class="validate-one-required" type="radio" name="genero" id="radio2" value="Femenino" <?php if($curriculum->genero=="Femenino"){echo 'checked="CHECKED"';} ?>/>
          Femenino</div></td>
        </tr>
        <tr>
          <td>Nacionalidad*</td>
          <td><input name="nacionalidad" type="text" class="required validate-alpha" id="nacionalidad" value="<?php echo $curriculum->nacionalidad; ?>" /></td>
        </tr>
        <tr>
          <td>Estado civil</td>
          <td>
            <select name="estadocivil" style="width: 195px;">
              <option selected="selected">Seleccione</option>
				<?php
                    $estadocivildb = array("Soltero(a)","Casado(a)","Separado(a)","Viudo(a)","Convive");
                    for($e=0; $e<=4; $e++){
                        if($estadocivildb[$e]==$curriculum->estadocivil){
                            echo '<option value="'.$estadocivildb[$e].'" selected="selected">'.$estadocivildb[$e].'</option>';
                        }else{
                            echo '<option value="'.$estadocivildb[$e].'">'.$estadocivildb[$e].'</option>';
                        }
                    }
                ?>
            </select>
          </td>
        </tr>
      </table>
      <br />
      <table width="100%" border="0">
        <tr>
          <td colspan="2" bgcolor="#FFCC00">Datos de contacto</td>
        </tr>
        <tr>
          <td>Direcci&oacute;n*</td>
          <td><input name="direccion" type="text" class="required" id="direccion" value="<?php echo $curriculum->direccion; ?>" /></td>
        </tr>
        <tr>
          <td>Regi&oacute;n*</td>
          <td>
          <select class="validate-selection" name="region" onchange="combo_direccion('provincias',this.value)">
          <option selected="selected">Seleccione</option>
          <?php
		  	foreach($region->Find('1=? order by id', array(1)) as $nombre_region){
				if($curriculum->region==$nombre_region->id){
					echo '<option value="'.$nombre_region->id.'" selected="selected">'.htmlentities($nombre_region->nombre).'</option>';
				}else{
					echo '<option value="'.$nombre_region->id.'">'.htmlentities($nombre_region->nombre).'</option>';
				}
			}
		  ?>
          </select>
          </td>
        </tr>
        <tr>
          <td>Ciudad/Provincia*</td>
          <td><div id="provincias">
          <?php
		  	if($curriculum->provincia!=""){
				echo '<select class="validate-selection" name="provincia" onchange="combo_direccion(\'comunas\',this.value)">';
				echo '<option>Seleccione</option>';
				foreach($provincia->Find('relacion=?', array($curriculum->region)) as $nombre_provincia){
					if($curriculum->provincia==$nombre_provincia->id){
						echo '<option value="'.$nombre_provincia->id.'" selected="selected">'.htmlentities($nombre_provincia->nombre).'</option>';
					}else{
						echo '<option value="'.$nombre_provincia->id.'">'.htmlentities($nombre_provincia->nombre).'</option>';
					}
				}
				echo '</select>';
			}else{
				echo "Seleccione una regi&oacute;n";
			}
		  ?>
          </div></td>
        </tr>
        <tr>
          <td>Comuna*</td>
          <td><div id="comunas">
          <?php
		  	if($curriculum->comuna!=""){
				echo '<select class="validate-selection" name="comuna">';
				echo '<option>Seleccione</option>';
				foreach($comuna->Find('relacion=?', array($curriculum->provincia)) as $nombre_comuna){
					if($curriculum->comuna==$nombre_comuna->id){
						echo '<option value="'.$nombre_comuna->id.'" selected="selected">'.htmlentities($nombre_comuna->nombre).'</option>';
					}else{
						echo '<option value="'.$nombre_comuna->id.'">'.htmlentities($nombre_comuna->nombre).'</option>';
					}
				}
				echo '</select>';
			}else{
				echo "Seleccione una provincia";
			}
		  ?>
          </div></td>
        </tr>
        <tr>
          <td>Tel&eacute;fono casa</td>
          <td><input name="fonocasa" type="text" id="fonocasa" value="<?php echo $curriculum->fonocasa; ?>" /></td>
        </tr>
        <tr>
          <td>Tel&eacute;fono m&oacute;vil</td>
          <td><input name="fonomovil" type="text" id="fonomovil" value="<?php echo $curriculum->fonomovil; ?>" /></td>
        </tr>
        <tr>
          <td>Tel&eacute;fono oficina</td>
          <td><input name="fonooficina" type="text" id="fonooficina" value="<?php echo $curriculum->fonooficina; ?>" /></td>
        </tr>
        <tr>
          <td>Email</td>
          <td><input name="email" type="text" class="validate-email" id="email" value="<?php echo $curriculum->email; ?>" /></td>
        </tr>
      </table>
      <p><a href="javascript:;" onClick="pasos('paso2')">paso2 &gt;</a>
        <input name="paso" type="hidden" id="paso" value="2" />
      </p>
    </td>
  </tr>
</table>