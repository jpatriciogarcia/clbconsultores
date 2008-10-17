<table width="100%" border="0">
  <tr>
    <td><table width="100%" border="0">
      <tr>
        <td colspan="2" bgcolor="#FFCC00">Experiencia laboral</td>
      </tr>
      <tr>
        <td>Año</td>
        <td>
        <select name="anolaboral1" id="anolaboral1">
            <option>Seleccione</option>
          <?php
		  	$anolaboraldb = $curriculum->anolaboral;
			list($desde, $hasta) = split('[/.-]', $anolaboraldb);
            for($a=2008; $a>=1920; $a--){
                if($desde==$a){
                    echo '<option value="'.$a.'" selected="selected">'.$a.'</option>';
                }else{
                    echo '<option value="'.$a.'">'.$a.'</option>';
                }
            }
          ?>
          </select>
          hasta
         <select name="anolaboral2" id="anolaboral2">
            <option>Seleccione</option>
          <?php
            for($a=2008; $a>=1920; $a--){
                if($hasta==$a){
                    echo '<option value="'.$a.'" selected="selected">'.$a.'</option>';
                }else{
                    echo '<option value="'.$a.'">'.$a.'</option>';
                }
            }
          ?>
          </select>          </td>
      </tr>
      <tr>
        <td>Cargo</td>
        <td><input name="cargo" type="text" id="cargo" value="<?php echo $curriculum->cargo; ?>"></td>
      </tr>
      <tr>
        <td>Empresa</td>
        <td><input name="empresa" type="text" id="empresa" value="<?php echo $curriculum->empresa; ?>"></td>
      </tr>
      <tr>
        <td>Objetivos del cargo</td>
        <td><input name="objetivos" type="text" id="objetivos" value="<?php echo $curriculum->objetivos; ?>"></td>
      </tr>
      <tr>
        <td>Logros</td>
        <td><input name="logros" type="text" id="logros" value="<?php echo $curriculum->logros; ?>"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>[<a href="javascript:;" onclick="javascript:;AgregarExperiencia()">Agregar experiencia laboral</a>]</td>
      </tr>
    </table>

    <div id="div-experiencia"></div>

      <table width="100%" border="0">
        <tr>
          <td colspan="2" bgcolor="#FFCC00">Otros conocimientos</td>
        </tr>
        <tr>
          <td>Software*</td>
          <td><input name="software" type="text" class="required" id="software" value="<?php echo $curriculum->software; ?>">
            &nbsp; nivel:
            <select class="validate-selection" name="nivelsoftware" id="nivelsoftware">
              <option selected="selected">Seleccione</option>
				<?php
                    $nivelsoftdb = array("Básico","Usuario","Avanzado");
                    for($n=0; $n<=2; $n++){
                        if($nivelsoftdb[$n]==$curriculum->nivelsoftware){
                            echo '<option value="'.$nivelsoftdb[$n].'" selected="selected">'.$nivelsoftdb[$n].'</option>';
                        }else{
                            echo '<option value="'.$nivelsoftdb[$n].'">'.$nivelsoftdb[$n].'</option>';
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
          <td colspan="4" bgcolor="#FFCC00">Idioma*</td>
        </tr>
        <tr>
          <td colspan="4"><table width="100%" border="0">
            <tr>
              <td>Idioma</td>
              <td>Hablado</td>
              <td>Escrito</td>
              <td>Traducción</td>
              <td>Idioma</td>
              <td>Hablado</td>
              <td>Escrito</td>
              <td>Traducción</td>
            </tr>
            <tr>
              <td><input name="ingles" type="checkbox" id="ingles" <?php if($curriculum->ingles!=0){echo 'checked="checked"';} ?> />
Inglés</td>
              <td colspan="3"><div>
                <input name="nivelingles" type="radio" id="radio" value="Hablado" <?php if($curriculum->nivelingles=='Hablado'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelingles" id="radio2" value="Escrito" <?php if($curriculum->nivelingles=='Escrito'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelingles" id="radio3" value="Traducción" <?php if($curriculum->nivelingles=='Traducción'){ echo 'checked="checked"'; } ?> />
              </div></td>
              <td><input type="checkbox" name="espanol" id="espanol" <?php if($curriculum->espanol!=0){echo 'checked="checked"';} ?> />
Español</td>
              <td colspan="3"><div>
                <input type="radio" name="nivelespanol" id="radio10" value="Hablado" <?php if($curriculum->nivelespanol=='Hablado'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelespanol" id="radio11" value="Escrito" <?php if($curriculum->nivelespanol=='Escrito'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelespanol" id="radio12" value="Traducción" <?php if($curriculum->nivelespanol=='Traducción'){ echo 'checked="checked"'; } ?> />
              </div></td>
            </tr>
            <tr>
              <td><input type="checkbox" name="frances" id="frances" <?php if($curriculum->frances!=0){echo 'checked="checked"';} ?> />
Francés</td>
              <td colspan="3"><div>
                <input type="radio" name="nivelfrances" id="radio4" value="Hablado" <?php if($curriculum->nivelfrances=='Hablado'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelfrances" id="radio5" value="Escrito" <?php if($curriculum->nivelfrances=='Escrito'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelfrances" id="radio6" value="Traducción" <?php if($curriculum->nivelfrances=='Traducción'){ echo 'checked="checked"'; } ?> />
              </div></td>
              <td><input type="checkbox" name="italiano" id="italiano" <?php if($curriculum->italiano!=0){echo 'checked="checked"';} ?> />
Italiano</td>
              <td colspan="3"><div>
                <input type="radio" name="nivelitaliano" id="radio13" value="Hablado" <?php if($curriculum->nivelitaliano=='Hablado'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelitaliano" id="radio14" value="Escrito" <?php if($curriculum->nivelitaliano=='Escrito'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelitaliano" id="radio15" value="Traducción" <?php if($curriculum->nivelitaliano=='Traducción'){ echo 'checked="checked"'; } ?> />
              </div></td>
            </tr>
            <tr>
              <td><input type="checkbox" name="aleman" id="aleman" <?php if($curriculum->aleman!=0){echo 'checked="checked"';} ?> />
Alemán</td>
              <td colspan="3"><div>
                <input type="radio" name="nivelaleman" id="radio7" value="Hablado" <?php if($curriculum->nivelaleman=='Hablado'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelaleman" id="radio8" value="Escrito" <?php if($curriculum->nivelaleman=='Escrito'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelaleman" id="radio9" value="Traducción" <?php if($curriculum->nivelaleman=='Traducción'){ echo 'checked="checked"'; } ?> />
              </div></td>
              <td><input type="checkbox" name="otro" id="otro" <?php if($curriculum->otro!=''){echo 'checked="checked"';} ?> />
Otro
  <input name="otrotxt" type="text" id="otrotxt" value="<?php if($curriculum->otro!=''){ echo $curriculum->otro; } ?>" /></td>
              <td colspan="3"><div>
                <input type="radio" name="nivelotro" id="radio18" value="Hablado" <?php if($curriculum->nivelotro=='Hablado'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelotro" id="radio19" value="Escrito" <?php if($curriculum->nivelotro=='Escrito'){ echo 'checked="checked"'; } ?> />
                <input type="radio" name="nivelotro" id="radio20" value="Traducción" <?php if($curriculum->nivelotro=='Traducción'){ echo 'checked="checked"'; } ?> />
              </div></td>
            </tr>
          </table></td>
        </tr>

        <tr>
          <td colspan="4">&nbsp;</td>
        </tr>
      </table>
      <table width="100%" border="0">
        <tr>
          <td bgcolor="#FFCC00">Experiencia extra curricular</td>
        </tr>
        <tr>
          <td>Actividades sociales/deportes/hobbys<br>
          <textarea name="experienciaextra" id="experienciaextra" cols="45" rows="5"><?php echo $curriculum->experienciaextra; ?></textarea></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="100%" border="0">
        <tr>
          <td colspan="2" bgcolor="#FFCC00">Expectativas laborales</td>
        </tr>
        <tr>
          <td>Pretensión de renta líquida*</td>
          <td>$
            <input name="pretensionrenta" type="text" class="required validate-number" id="pretensionrenta" value="<?php echo $curriculum->pretensionrenta; ?>"></td>
        </tr>
        <tr>
          <td>Región*</td>
          <td>
          <select class="validate-selection" name="regionlaboral" id="regionlaboral">
          <option selected="selected">Seleccione</option>
          <?php
		  	foreach($region->Find('1=?', array(1)) as $nombre_region){
				if($curriculum->regionlaboral==$nombre_region->id){
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
          <td>Disponibilidad*</td>
          <td>
          <div>
            <input name="disponibilidad" type="radio" id="radio16" value="Inmediata" <?php if($curriculum->disponibilidad=="Inmediata"){echo 'checked="CHECKED"';} ?>/>
            Inmediata
  <input class="validate-one-required" type="radio" name="disponibilidad" id="radio17" value="Previa desvinculación" <?php if($curriculum->disponibilidad=="Previa desvinculación"){echo 'checked="CHECKED"';} ?>/>
          Previa desvinculación</div></td>
        </tr>
        <tr>
          <td>Áreas de interés</td>
          <td><input name="areainteres" type="text" id="areainteres" value="<?php echo $curriculum->areainteres; ?>"></td>
        </tr>
      </table>
    <p><a href="javascript:;" onclick="pasos('backpaso2')">< Volver al paso 2</a> <a href="javascript:;" onclick="pasos('fin')">finalizar</a>
      <input name="paso" type="hidden" id="paso" value="terminar" />
    </p></td>
  </tr>
</table>

<script>
VerExperiencia();
</script>