<table width="100%" border="0">
  <tr>
    <td><table width="100%" border="0">
      <tr>
        <td colspan="2" bgcolor="#FFCC00">Antecedentes acad&eacute;micos</td>
      </tr>
      <tr>
        <td>Colegio*</td>
        <td><input name="colegio" type="text" class="required" id="colegio" value="<?php echo $curriculum->colegio; ?>" /></td>
      </tr>
      <tr>
        <td>A&ntilde;o de egreso*</td>
        <td>
        <select class="validate-selection" name="anoegresocolegio" id="anoegresocolegio">
            <option>Seleccione</option>
          <?php
            for($a=2007; $a>=1940; $a--){
                if($curriculum->anoegresocolegio==$a){
                    echo '<option value="'.$a.'" selected="selected">'.$a.'</option>';
                }else{
                    echo '<option value="'.$a.'">'.$a.'</option>';
                }
            }
          ?>
        </select>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table>
      <table width="100%" border="0">
        <tr>
          <td colspan="2" bgcolor="#FFCC00">Estudios superiores</td>
        </tr>
        <tr>
          <td>Carrera</td>
          <td>
          <select name="carrera" id="carrera">
          <option selected="selected">Seleccione</option>
          <?php
		  	foreach($carrera->Find('1=?', array(1)) as $nombre_carrera){
				if($curriculum->carrera==$nombre_carrera->id){
					echo '<option value="'.$nombre_carrera->id.'" selected="selected">'.htmlentities($nombre_carrera->nombre).'</option>';
				}else{
					echo '<option value="'.$nombre_carrera->id.'">'.htmlentities($nombre_carrera->nombre).'</option>';
				}
			}
		  ?>
          </select>          </td>
        </tr>
        <tr>
          <td>Menci&oacute;n</td>
          <td><input name="mencion" type="text" id="mencion" value="<?php /*echo $curriculum->mencion;*/ ?>" /></td>
        </tr>
        <tr>
          <td>Instituci&oacute;n</td>
          <td>
          <select name="institucion" id="institucion">
          <option selected="selected">Seleccione</option>
          <?php
		  	foreach($institucion->Find('1=?', array(1)) as $nombre_inst){
				if($curriculum->institucion==$nombre_inst->id){
					echo '<option value="'.$nombre_inst->id.'" selected="selected">'.htmlentities($nombre_inst->nombre).'</option>';
				}else{
					echo '<option value="'.$nombre_inst->id.'">'.htmlentities($nombre_inst->nombre).'</option>';
				}
			}
		  ?>
          </select>          </td>
        </tr>
        <tr>
          <td>Estado de estudio</td>
          <td>
          <select name="estadoestudio" id="estadoestudio">
              <option selected="selected">Seleccione</option>
				<?php
                    $estadodb = array("Egresado","Titulado","Estudiando");
                    for($e=0; $e<=2; $e++){
                        if($estadodb[$e]==$curriculum->estadoestudio){
                            echo '<option value="'.$estadodb[$e].'" selected="selected">'.$estadodb[$e].'</option>';
                        }else{
                            echo '<option value="'.$estadodb[$e].'">'.$estadodb[$e].'</option>';
                        }
                    }
                ?>
            </select>            </td>
        </tr>
        <tr>
          <td>A&ntilde;o de egreso</td>
          <td>
          <select name="anoegresosuperior" id="anoegresosuperior">
            <option>Seleccione</option>
          <?php
            for($a=2007; $a>=1940; $a--){
                if($curriculum->anoegresosuperior==$a){
                    echo '<option value="'.$a.'" selected="selected">'.$a.'</option>';
                }else{
                    echo '<option value="'.$a.'">'.$a.'</option>';
                }
            }
          ?>
          </select>          </td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>[<a href="javascript:;" onclick="javascript:;AgregarCarrera()">Agregar carrera</a>]</td>
        </tr>
      </table>

      <div id="div-carreras"></div>

      <table width="100%" border="0">
        <tr>
          <td bgcolor="#FFCC00">T&iacute;tulos, seminarios y otros</td>
        </tr>
        <tr>
          <td><textarea name="titulos" id="titulos" cols="45" rows="5"><?php echo $curriculum->titulos; ?></textarea></td>
        </tr>
      </table>
    <p><a href="javascript:;" onclick="pasos('backpaso1')">< Volver al paso 1</a> <a href="javascript:;" onclick="pasos('paso3')">paso3 ></a>
      <input name="paso" type="hidden" id="paso" value="3" />
    </p></td>
  </tr>
</table>
<script>
VerCarrera();
</script>