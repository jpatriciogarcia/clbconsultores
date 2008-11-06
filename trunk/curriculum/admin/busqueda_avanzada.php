<div align="center">
        <table width="800" border="0" align="center" class="estilo1">
          <tbody>
            <tr>
              <td colspan="2" bgcolor="#ffcc00">Datos personales</td>
            </tr>
            <tr>
              <td>RUT*</td>
              <td><input name="rut" id="rut" maxlength="20" onKeyPress="return ingresarut(event)" type="text" />
                (Ej.: 12345678-9)</td>
            </tr>
            <tr>
              <td>Nombres*</td>
              <td><input name="nombres" id="nombres" type="text" /></td>
            </tr>
            <tr>
              <td>Primer apellido*</td>
              <td><input name="apellido1" id="apellido1" type="text" /></td>
            </tr>
            <tr>
              <td>Segundo apellido*</td>
              <td><input name="apellido2" id="apellido2" type="text" /></td>
            </tr>
            <tr>
              <td>Fecha de nacimiento*</td>
              <td><select name="ano">
                  <option selected="selected">A&ntilde;o</option>
                  <option value="2001">2001</option>
                  <option value="2000">2000</option>
                  <option value="1999">1999</option>
                  <option value="1998">1998</option>
                  <option value="1997">1997</option>
                  <option value="1996">1996</option>
                  <option value="1995">1995</option>
                  <option value="1994">1994</option>
                  <option value="1993">1993</option>
                  <option value="1992">1992</option>
                  <option value="1991">1991</option>
                  <option value="1990">1990</option>
                  <option value="1989">1989</option>
                  <option value="1988">1988</option>
                  <option value="1987" >1987</option>
                  <option value="1986">1986</option>
                  <option value="1985">1985</option>
                  <option value="1984">1984</option>
                  <option value="1983">1983</option>
                  <option value="1982">1982</option>
                  <option value="1981">1981</option>
                  <option value="1980">1980</option>
                  <option value="1979">1979</option>
                  <option value="1978">1978</option>
                  <option value="1977">1977</option>
                  <option value="1976">1976</option>
                  <option value="1975">1975</option>
                  <option value="1974">1974</option>
                  <option value="1973">1973</option>
                  <option value="1972">1972</option>
                  <option value="1971">1971</option>
                  <option value="1970">1970</option>
                  <option value="1969">1969</option>
                  <option value="1968">1968</option>
                  <option value="1967">1967</option>
                  <option value="1966">1966</option>
                  <option value="1965">1965</option>
                  <option value="1964">1964</option>
                  <option value="1963">1963</option>
                  <option value="1962">1962</option>
                  <option value="1961">1961</option>
                  <option value="1960">1960</option>
                  <option value="1959">1959</option>
                  <option value="1958">1958</option>
                  <option value="1957">1957</option>
                  <option value="1956">1956</option>
                  <option value="1955">1955</option>
                  <option value="1954">1954</option>
                  <option value="1953">1953</option>
                  <option value="1952">1952</option>
                  <option value="1951">1951</option>
                  <option value="1950">1950</option>
                  <option value="1949">1949</option>
                  <option value="1948">1948</option>
                  <option value="1947">1947</option>
                  <option value="1946">1946</option>
                  <option value="1945">1945</option>
                  <option value="1944">1944</option>
                  <option value="1943">1943</option>
                  <option value="1942">1942</option>
                  <option value="1941">1941</option>
                  <option value="1940">1940</option>
                  <option value="1939">1939</option>
                  <option value="1938">1938</option>
                  <option value="1937">1937</option>
                  <option value="1936">1936</option>
                  <option value="1935">1935</option>
                  <option value="1934">1934</option>
                  <option value="1933">1933</option>
                  <option value="1932">1932</option>
                  <option value="1931">1931</option>
                  <option value="1930">1930</option>
                  <option value="1929">1929</option>
                  <option value="1928">1928</option>
                  <option value="1927">1927</option>
                  <option value="1926">1926</option>
                  <option value="1925">1925</option>
                  <option value="1924">1924</option>
                  <option value="1923">1923</option>
                  <option value="1922">1922</option>
                  <option value="1921">1921</option>
                  <option value="1920">1920</option>
                  <option value="1919">1919</option>
                  <option value="1918">1918</option>
                  <option value="1917">1917</option>
                  <option value="1916">1916</option>
                  <option value="1915">1915</option>
                  <option value="1914">1914</option>
                  <option value="1913">1913</option>
                  <option value="1912">1912</option>
                  <option value="1911">1911</option>
                  <option value="1910">1910</option>
                  <option value="1909">1909</option>
                  <option value="1908">1908</option>
                  <option value="1907">1907</option>
                  <option value="1906">1906</option>
                  <option value="1905">1905</option>
                  <option value="1904">1904</option>
                  <option value="1903">1903</option>
                  <option value="1902">1902</option>
                  <option value="1901">1901</option>
                  <option value="1900">1900</option>
                </select>              </td>
            </tr>
            <tr>
              <td>G&eacute;nero*</td>
              <td><div>
                  <input name="genero" id="radio" value="Masculino" type="radio" />
                Masculino
                <input name="genero" id="radio2" value="Femenino" type="radio" />
                Femenino</div></td>
            </tr>
            <tr>
              <td>Nacionalidad*</td>
              <td><input name="nacionalidad" id="nacionalidad" type="text" /></td>
            </tr>
            <tr>
              <td>Estado civil</td>
              <td><select name="estadocivil">
                  <option selected="selected">Seleccione</option>
                  <option value="Soltero(a)">Soltero(a)</option>
                  <option value="Casado(a)">Casado(a)</option>
                  <option value="Separado(a)">Separado(a)</option>
                  <option value="Viudo(a)">Viudo(a)</option>
                  <option value="Convive">Convive</option>
                </select>              </td>
            </tr>
          </tbody>
        </table>
        <table width="800" border="0" align="center" class="estilo1">
          <tbody>
            <tr>
              <td colspan="2" bgcolor="#ffcc00">Datos de contacto</td>
            </tr>
            <tr>
              <td>Regi&oacute;n*</td>
              <td><select name="region" onChange="combo_direccion('provincias',this.value)">
                  <option selected="selected">Seleccione</option>
                  <option value="1">I Regi&oacute;n de Tarapac&aacute;</option>
                  <option value="2">II Regi&oacute;n de Antofagasta</option>
                  <option value="3">III Regi&oacute;n de Atacama</option>
                  <option value="4">IV Regi&oacute;n de Coquimbo</option>
                  <option value="5">V Regi&oacute;n de Valpara&iacute;so</option>
                  <option value="6">VI Regi&oacute;n del Libertador General Bernardo O'higgins</option>
                  <option value="7">VII Regi&oacute;n del Maule</option>
                  <option value="8">VIII Regi&oacute;n del Biob&iacute;o</option>
                  <option value="9">IX Regi&oacute;n de la Araucan&iacute;a</option>
                  <option value="10">X Regi&oacute;n de los Lagos</option>
                  <option value="11">XI Regi&oacute;n Ays&eacute;n del General Carlos Ib&aacute;&ntilde;ez del Campo</option>
                  <option value="12">XII Regi&oacute;n de Magallanes y de la Ant&aacute;rtica Chilena</option>
                  <option value="13">Regi&oacute;n Metropolitana de Santiago</option>
                  <option value="14">XIV Regi&oacute;n de Los Rios</option>
                  <option value="15">XV Regi&oacute;n de Arica y Parinacota</option>
                </select>              </td>
            </tr>
            <tr>
              <td>Ciudad/Provincia*</td>
              <td><div id="provincias">
                  <select name="provincia" onChange="combo_direccion('comunas',this.value)">
                    <option>Seleccione</option>
                    <option value="13">Valpara&iacute;so</option>
                    <option value="14">Isla de Pascua</option>
                    <option value="15" >Los Andes</option>
                    <option value="16">Petorca</option>
                    <option value="17">Quillota</option>
                    <option value="18">San Antonio</option>
                    <option value="19">San Felipe de Aconcagua</option>
                  </select>
              </div></td>
            </tr>
            <tr>
              <td>Comuna*</td>
              <td><div id="comunas">
                  <select name="comuna">
                    <option>Seleccione</option>
                    <option value="59">Los Andes</option>
                    <option value="60">Calle Larga</option>
                    <option value="61">Rinconada</option>
                    <option value="62">San Esteban</option>
                  </select>
              </div></td>
            </tr>
          </tbody>
        </table>
        <table width="800" cellpadding="0" cellspacing="0" class="estilo1">
          <tr>
            <td colspan="2" bgcolor="#ffcc00">Estudios superiores</td>
          </tr>
          <tr>
            <td>Carrera</td>
            <td><select name="carrera" id="carrera">
                <option selected="selected">Seleccione</option>
                <option value="5"> Abogac&iacute;a / Derecho / Leyes </option>
                <option value="6"> Actuario </option>
                <option value="7"> Administraci&oacute;n de Empresas </option>
                <option value="8"> Administraci&oacute;n de Empresas de Servicios </option>
                <option value="9"> Administraci&oacute;n de Empresas Tur&iacute;sticas </option>
                <option value="10"> Administraci&oacute;n de Hoteles y Restaurantes </option>
                <option value="11"> Administraci&oacute;n de Negocios Internacionales </option>
                <option value="12"> Administraci&oacute;n de Predios Agr&iacute;colas </option>
                <option value="13"> Administraci&oacute;n de Ventas </option>
                <option value="14"> Administraci&oacute;n en Producci&oacute;n Gastron&oacute;mica </option>
                <option value="15"> Administraci&oacute;n Financiera </option>
                <option value="16"> Administraci&oacute;n Hotelera Profesional </option>
                <option value="17"> Administraci&oacute;n Industrial </option>
                <option value="18"> Administraci&oacute;n P&uacute;blica / Gesti&oacute;n P&uacute;blica </option>
                <option value="19"> Administraci&oacute;n y Producci&oacute;n Agropecuaria </option>
                <option value="20"> Agronom&iacute;a / Agroindustria / Ing. Agr&iacute;cola </option>
                <option value="21"> An&aacute;lisis de Sistemas / Analista Programador </option>
                <option value="22"> Antropolog&iacute;a </option>
                <option value="23"> Arqueolog&iacute;a </option>
                <option value="24"> Arquitectura </option>
                <option value="25"> Arte Dram&aacute;tico / Actuaci&oacute;n / Teatro </option>
                <option value="26"> Artes / Artes Pl&aacute;sticas </option>
                <option value="27"> Asistente de Odontolog&iacute;a Dental </option>
                <option value="28"> Asistente Ejecutivo </option>
                <option value="29"> Asistente Judicial </option>
                <option value="30"> Astronom&iacute;a </option>
                <option value="31"> Automatizaci&oacute;n y Control Industrial </option>
                <option value="32"> Auxiliar Param&eacute;dico </option>
                <option value="33"> Bachiller en Ciencias Religiosas </option>
                <option value="34"> Bachillerato en Ciencias </option>
                <option value="35"> Bachillerato en Humanidades </option>
                <option value="36"> Bacteriolog&iacute;a </option>
                <option value="37"> Bibliotecolog&iacute;a / Documentaci&oacute;n </option>
                <option value="38"> B&iacute;oanalisis / Biotecnolog&iacute;a Industrial </option>
                <option value="39"> Biolog&iacute;a </option>
                <option value="40"> Biolog&iacute;a en Gesti&oacute;n de Recursos Naturales </option>
                <option value="41"> Biolog&iacute;a Marina </option>
                <option value="42"> Bioqu&iacute;mica </option>
                <option value="43"> Biotecnolog&iacute;a / Bioingenier&iacute;a </option>
                <option value="44"> Caligraf&iacute;a P&uacute;blica </option>
                <option value="45"> Canto / Interpretaci&oacute;n en Canto </option>
                <option value="46"> Cartograf&iacute;a </option>
                <option value="47"> Chofer / Transporte </option>
                <option value="48"> Ciencia Pol&iacute;tica / Licenciatura en Ciencia Pol&iacute;tica </option>
                <option value="49"> Ciencias F&iacute;sicas </option>
                <option value="50"> Cine / S&eacute;ptimo Arte </option>
                <option value="51"> Comercio Internacional / Comercio Exterior </option>
                <option value="52"> Computaci&oacute;n e Inform&aacute;tica </option>
                <option value="53"> Comunicaci&oacute;n Audiovisual / Multimedial </option>
                <option value="54"> Comunicaci&oacute;n Social / Empresarial </option>
                <option value="55"> Consejer&iacute;a Educacional y Vocacional Ense&ntilde;anza B&aacute;sica </option>
                <option value="56"> Consejer&iacute;a Educacional y Vocacional Ense&ntilde;anza Media </option>
                <option value="57"> Conservaci&oacute;n Industrial de Alimentos por Fr&iacute;o </option>
                <option value="58"> Construcci&oacute;n Civil </option>
                <option value="59"> Construcciones Met&aacute;licas </option>
                <option value="60"> Contador Auditor / Auditor&iacute;a </option>
                <option value="62"> Contador General / Contabilidad </option>
                <option value="63"> Cosmetolog&iacute;a </option>
                <option value="64"> Danza / Interpretaci&oacute;n en Danza </option>
                <option value="65"> Decoraci&oacute;n de Interiores </option>
                <option value="66"> Dibujo de Proyectos de Arquitectura e Ingenieria </option>
                <option value="67"> Dibujo Industrial </option>
                <option value="69"> Dibujo T&eacute;cnico </option>
                <option value="70"> Dibujo y Proyectos Industriales </option>
                <option value="71"> Diplomado </option>
                <option value="72"> Direcci&oacute;n de Arte </option>
                <option value="73"> Direcci&oacute;n y Producci&oacute;n </option>
                <option value="74"> Direcci&oacute;n y Producci&oacute;n de eventos </option>
                <option value="76"> Dise&ntilde;o </option>
                <option value="77"> Dise&ntilde;o de Interiores / Decoraci&oacute;n </option>
                <option value="78"> Dise&ntilde;o de Interiores y Mobiliario </option>
                <option value="79"> Dise&ntilde;o de Objetos y Ambientes </option>
                <option value="80"> Dise&ntilde;o de Vestuario / Textil / Moda </option>
                <option value="81"> Dise&ntilde;o Digital </option>
                <option value="83"> Dise&ntilde;o Editorial </option>
                <option value="84"> Dise&ntilde;o Gr&aacute;fico </option>
                <option value="85"> Dise&ntilde;o Industria / Dibujo Proyectos </option>
                <option value="86"> Dise&ntilde;o y Producci&oacute;n de Areas Verdes </option>
                <option value="87"> Dise&ntilde;o y Programaci&oacute;n Multimedia / Dise&ntilde;o Digital </option>
                <option value="88"> Ecolog&iacute;a </option>
                <option value="90"> Econom&iacute;a </option>
                <option value="91"> Ecoturismo </option>
                <option value="92"> Educaci&oacute;n Parvularia / Inicial / P&aacute;rvulo </option>
                <option value="93"> Electricidad </option>
                <option value="94"> Electromec&aacute;nico </option>
                <option value="95"> Electr&oacute;nica </option>
                <option value="97"> Electr&oacute;nica de Sistemas Computarizados </option>
                <option value="98"> Enfermer&iacute;a </option>
                <option value="99"> Escenograf&iacute;a </option>
                <option value="100"> Escultura </option>
                <option value="101"> Estad&iacute;sticas </option>
                <option value="102"> Est&eacute;tica </option>
                <option value="104"> Filosof&iacute;a </option>
                <option value="105"> Finanzas Bancarias / Negocios Internacionales </option>
                <option value="106"> F&iacute;sica / Ciencias F&iacute;sicas </option>
                <option value="107"> Fisioterapia </option>
                <option value="108"> Fonoaudiolog&iacute;a </option>
                <option value="109"> Fotograf&iacute;a </option>
                <option value="111"> Frigorista Electromec&aacute;nico </option>
                <option value="112"> Fuerzas Armadas / Milicia </option>
                <option value="113"> Gasfiter&iacute;a </option>
                <option value="114"> Gastronom&iacute;a / Cocina </option>
                <option value="115"> Geograf&iacute;a </option>
                <option value="116"> Geolog&iacute;a / Ciencias Geol&oacute;gicas </option>
                <option value="118"> Geomensura / Topograf&iacute;a / Agrimensura </option>
                <option value="119"> Geoqu&iacute;mica </option>
                <option value="120"> Guardia de Seguridad </option>
                <option value="121"> Higienista Dental </option>
                <option value="122"> Historia / Licenciatura en Historia </option>
                <option value="123"> Historia del Arte </option>
                <option value="125"> Historia y Geograf&iacute;a </option>
                <option value="126"> Hoteler&iacute;a / Administraci&oacute;n Hotelera </option>
                <option value="127"> Idiomas </option>
                <option value="128"> Ilustraci&oacute;n Digital </option>
                <option value="129"> Inform&aacute;tica </option>
                <option value="130"> Inform&aacute;tica Biom&eacute;dica </option>
                <option value="132"> Ingenier&iacute;a </option>
                <option value="133"> Ingenier&iacute;a Aerospacial / Aeron&aacute;utica </option>
                <option value="134"> Ingenier&iacute;a Ambiental </option>
                <option value="135"> Ingenier&iacute;a Biom&eacute;dica </option>
                <option value="136"> Ingenier&iacute;a Civil / Civil </option>
                <option value="137"> Ingenier&iacute;a Civil El&eacute;ctrica / Ingenier&iacute;a El&eacute;ctrica </option>
                <option value="139"> Ingenier&iacute;a Civil Electr&oacute;nica </option>
                <option value="140"> Ingenier&iacute;a Civil en Electricidad </option>
                <option value="141"> Ingenier&iacute;a Civil en Inform&aacute;tica </option>
                <option value="142"> Ingenieria Civil en Sonido </option>
                <option value="143"> Ingenier&iacute;a Civil Industrial / Ingenier&iacute;a Industrial </option>
                <option value="144"> Ingenier&iacute;a Civil Mec&aacute;nica </option>
                <option value="146"> Ingenier&iacute;a Comercial </option>
                <option value="147"> Ingenier&iacute;a de Dise&ntilde;o / Automatizaci&oacute;n Electr&oacute;nica </option>
                <option value="148"> Ingenier&iacute;a de Ejecuci&oacute;n </option>
                <option value="149"> Ingenier&iacute;a de Ejecuci&oacute;n en Administraci&oacute;n </option>
                <option value="150"> Ingenier&iacute;a de Ejecuci&oacute;n en Administraci&oacute;n Hotelera </option>
                <option value="151"> Ingenier&iacute;a de Ejecuci&oacute;n en Administraci&oacute;n Tur&iacute;stica </option>
                <option value="153"> Ingenier&iacute;a de Ejecuci&oacute;n en Marketing </option>
                <option value="154"> Ingenier&iacute;a de Ejecuci&oacute;n en Mec&aacute;nica Automotriz y Autotr&oacute;nica </option>
                <option value="155"> Ingenier&iacute;a de Ejecuci&oacute;n en Sonido </option>
                <option value="156"> Ingenier&iacute;a de Informaci&oacute;n y Control de Gesti&oacute;n </option>
                <option value="157"> Ingenier&iacute;a de Petr&oacute;leos / Petroqu&iacute;mica </option>
                <option value="158"> Ingenier&iacute;a de Producci&oacute;n </option>
                <option value="160"> Ingenier&iacute;a Electr&oacute;nica </option>
                <option value="161"> Ingenier&iacute;a en Acuicultura / Acuicultura </option>
                <option value="162"> Ingenier&iacute;a en Administraci&oacute;n Agroindustrial </option>
                <option value="163"> Ingenier&iacute;a en Administraci&oacute;n de Operaciones </option>
                <option value="164"> Ingenier&iacute;a en Administraci&oacute;n Industrial </option>
                <option value="165"> Ingenier&iacute;a en Agronegocios </option>
                <option value="167"> Ingenier&iacute;a en Alimentos </option>
                <option value="168"> Ingenier&iacute;a en Automatizaci&oacute;n y Control Industrial </option>
                <option value="169"> Ingenier&iacute;a en Bioinform&aacute;tica </option>
                <option value="170"> Ingenieria en Biotecnolog&iacute;a </option>
                <option value="171"> Ingenier&iacute;a en Computaci&oacute;n </option>
                <option value="172"> Ingenier&iacute;a en Conectividad y Redes </option>
                <option value="174"> Ingenier&iacute;a en Construcci&oacute;n </option>
                <option value="175"> Ingenier&iacute;a en Control e Instrumentaci&oacute;n Industrial </option>
                <option value="176"> Ingenier&iacute;a en Deportes </option>
                <option value="177"> Ingenier&iacute;a en Electricidad </option>
                <option value="178"> Ingenier&iacute;a en Fabricaci&oacute;n y montaje Ind. </option>
                <option value="179"> Ingenier&iacute;a en Geograf&iacute;a </option>
                <option value="181"> Ingenier&iacute;a en Geomensura </option>
                <option value="182"> Ingenier&iacute;a en Gesti&oacute;n </option>
                <option value="183"> Ingenier&iacute;a en Gesti&oacute;n de Calidad y Ambiente </option>
                <option value="184"> Ingenier&iacute;a en Gesti&oacute;n de Negocios </option>
                <option value="185"> Ingenier&iacute;a en Gesti&oacute;n y Control de Calidad </option>
                <option value="186"> Ingenier&iacute;a en Gesti&oacute;n y Desarrollo Tecnol&oacute;gico </option>
                <option value="188"> Ingenier&iacute;a en Industrias de la Madera </option>
                <option value="189"> Ingenier&iacute;a en Inform&aacute;tica / Sistemas </option>
                <option value="190"> Ingenier&iacute;a en Log&iacute;stica </option>
                <option value="191"> Ingenier&iacute;a en Mantenimiento Industrial </option>
                <option value="192"> Ingenier&iacute;a en manufactura industrial </option>
                <option value="193"> Ingenier&iacute;a en Mecatr&oacute;nica </option>
                <option value="195"> Ingenier&iacute;a en Metalmec&aacute;nica </option>
                <option value="196"> Ingenier&iacute;a en Minas </option>
                <option value="197"> Ingenieria en Negocios Internacionales </option>
                <option value="198"> Ingenier&iacute;a en Obras Civiles </option>
                <option value="199"> Ingenier&iacute;a en Prevenci&oacute;n de Riesgos </option>
                <option value="200"> Ingenier&iacute;a en procesos de la madera </option>
                <option value="202"> Ingenier&iacute;a en Proyectos Industriales </option>
                <option value="203"> Ingenier&iacute;a en Recursos Naturales Renovables </option>
                <option value="204"> Ingenier&iacute;a en Refrigeraci&oacute;n y Climatizaci&oacute;n </option>
                <option value="205"> Ingenier&iacute;a en Telecomunicaciones </option>
                <option value="206"> Ingenier&iacute;a en Transporte </option>
                <option value="207"> Ingenier&iacute;a Forestal </option>
                <option value="209"> Ingenier&iacute;a Hidr&aacute;ulica </option>
                <option value="210"> Ingenier&iacute;a Matem&aacute;ticas </option>
                <option value="211"> Ingenier&iacute;a Mec&aacute;nica </option>
                <option value="212"> Ingenier&iacute;a Met&aacute;lica / Metal&uacute;rgica </option>
                <option value="213"> Ingenier&iacute;a Naval </option>
                <option value="214"> Ingenier&iacute;a Pesquera / Cultivos Marinos </option>
                <option value="216"> Ingenier&iacute;a Qu&iacute;mica </option>
                <option value="217"> Jardiner&iacute;a / Floricultura </option>
                <option value="218"> Junior / Cadete / Oficinista </option>
                <option value="219"> Kinesiolog&iacute;a </option>
                <option value="220"> Laboratorio Dental / Mec&aacute;nica Dental </option>
                <option value="221"> Licenciatura en Arte / Bellas Artes </option>
                <option value="223"> Licenciatura en Ciencias Biol&oacute;gicas </option>
                <option value="224"> Licenciatura en Ciencias Religiosas y Estudios Eclesi&aacute;sticos </option>
                <option value="225"> Licenciatura en Educaci&oacute;n / Magisterio </option>
                <option value="226"> Licenciatura en Literatura / Literatura / Letras </option>
                <option value="227"> Maestro Mayor de Obras </option>
                <option value="228"> Magister </option>
                <option value="230"> Magister en Ciencias de la Educaci&oacute;n </option>
                <option value="231"> Manteniemiento de Maquinaria de Planta </option>
                <option value="232"> Manteniemiento de Maquinaria Pesada </option>
                <option value="233"> Mantenimiento Industrial / Producci&oacute;n Industrial </option>
                <option value="234"> Marketing / Mercadotecnia </option>
                <option value="235"> Matem&aacute;tica </option>
                <option value="237"> Matr&oacute;n (a) </option>
                <option value="238"> Mayordomo </option>
                <option value="239"> MBA </option>
                <option value="240"> Mec&aacute;nica </option>
                <option value="241"> Mec&aacute;nica Industrial </option>
                <option value="242"> Medicina </option>
                <option value="244"> Medicina Veterinaria </option>
                <option value="245"> Meteorolog&iacute;a </option>
                <option value="246"> Microbiolog&iacute;a industrial de alimentos </option>
                <option value="247"> Minero Metal&uacute;rgico </option>
                <option value="248"> Modelista de Vestuario </option>
                <option value="249"> Museolog&iacute;a </option>
                <option value="251"> M&uacute;sica </option>
                <option value="252"> M&uacute;sico - Terapia </option>
                <option value="253"> Musicoterapia </option>
                <option value="254"> Notario P&uacute;blico / Escribano P&uacute;blico </option>
                <option value="255"> Nutrici&oacute;n / Nutrici&oacute;n y Diet&eacute;tica </option>
                <option value="256"> Nutrici&oacute;n y Alimentaci&oacute;n Institucional </option>
                <option value="258"> Obstetricia y Puericultura </option>
                <option value="259"> Oceanograf&iacute;a </option>
                <option value="260"> Odontolog&iacute;a </option>
                <option value="261"> Oftalmolog&iacute;a </option>
                <option value="262"> Optometr&iacute;a </option>
                <option value="263"> Orfebrer&iacute;a / Joyer&iacute;a </option>
                <option value="265"> Orientaci&oacute;n Familiar </option>
                <option value="266"> Paisajismo / Dise&ntilde;o de Paisaje </option>
                <option value="267"> Panadero </option>
                <option value="268"> P&aacute;rvulo </option>
                <option value="269"> Pasteler&iacute;a Internacional </option>
                <option value="270"> Pedagog&iacute;a </option>
                <option value="272"> Pedagog&iacute;a B&aacute;sica / Educaci&oacute;n B&aacute;sica / Primaria </option>
                <option value="273"> Pedagog&iacute;a Educaci&oacute;n Media en Lenguaje y Comunicaci&oacute;n </option>
                <option value="274"> Pedagog&iacute;a en Ciencias </option>
                <option value="275"> Pedagog&iacute;a en Cs. Naturales y F&iacute;sica </option>
                <option value="276"> Pedagog&iacute;a en Cs. Naturales y Qu&iacute;mica </option>
                <option value="277"> Pedagog&iacute;a en Educaci&oacute;n Diferencial </option>
                <option value="279"> Pedagog&iacute;a en Educaci&oacute;n F&iacute;sica y Deporte </option>
                <option value="280"> Pedagog&iacute;a en Historia / Ciencias Sociales </option>
                <option value="281"> Pedagog&iacute;a en Ingl&eacute;s / Idiomas </option>
                <option value="282"> Pedagog&iacute;a en Lengua Castellana y Comunicaci&oacute;n </option>
                <option value="283"> Pedagog&iacute;a en Matem&aacute;ticas / Computaci&oacute;n </option>
                <option value="284"> Pedagog&iacute;a en M&uacute;sica / Arte </option>
                <option value="286"> Pedagog&iacute;a en Religi&oacute;n </option>
                <option value="287"> Pedagog&iacute;a Media / Educaci&oacute;n Media / Secundaria </option>
                <option value="288"> Pedagog&iacute;a Media en Religi&oacute;n y Educaci&oacute;n Moral </option>
                <option value="289"> Periodismo / Comunicaci&oacute;n Social </option>
                <option value="290"> Perito Criminal&iacute;stico </option>
                <option value="291"> Piloto / Aviaci&oacute;n </option>
                <option value="293"> Pintura </option>
                <option value="294"> Preparador F&iacute;sico </option>
                <option value="295"> Prevenci&oacute;n de Riesgos / Seguridad Industrial </option>
                <option value="296"> Producci&oacute;n Gastron&oacute;mica </option>
                <option value="297"> Producci&oacute;n Musical </option>
                <option value="298"> Programaci&oacute;n </option>
                <option value="300"> Psicolog&iacute;a </option>
                <option value="301"> Psicolog&iacute;a Cl&iacute;nica </option>
                <option value="302"> Psicolog&iacute;a Educacional </option>
                <option value="303"> Psicolog&iacute;a Laboral </option>
                <option value="304"> Psicopedagog&iacute;a / Educaci&oacute;n Diferencial </option>
                <option value="305"> Publicidad - Comunicaci&oacute;n Social </option>
                <option value="307"> Publicidad Profesional Menci&oacute;n Marketing y Medios </option>
                <option value="308"> Publicidad T&eacute;cnica Menci&oacute;n Marketing Promocional </option>
                <option value="309"> Qu&iacute;mica / Analista Qu&iacute;mico </option>
                <option value="310"> Qu&iacute;mica Industrial </option>
                <option value="311"> Qu&iacute;mica Marina </option>
                <option value="312"> Qu&iacute;mica y Farmacia </option>
                <option value="314"> Qu&iacute;mico Laboratista Industrial </option>
                <option value="315"> Recursos Humanos / Relaciones Industriales </option>
                <option value="316"> Redes y Comunicaci&oacute;n de Datos / Conectividad </option>
                <option value="317"> Relaciones del Trabajo </option>
                <option value="318"> Relaciones Internacionales </option>
                <option value="319"> Relaciones P&uacute;blicas </option>
                <option value="321"> Sacerdocio </option>
                <option value="322"> Secretariado </option>
                <option value="323"> Secretariado Bilingue </option>
                <option value="324"> Servicios Dom&eacute;sticos </option>
                <option value="325"> Sevicios Dom&eacute;sticos / Empleada Dom&eacute;stica </option>
                <option value="326"> Sociolog&iacute;a </option>
                <option value="328"> T&eacute;cnico / Tecn&oacute;logo / T&eacute;cnico Superior </option>
                <option value="329"> T&eacute;cnico Agr&iacute;cola </option>
                <option value="330"> T&eacute;cnico AudioVisual </option>
                <option value="331"> T&eacute;cnico Control de producci&oacute;n industrial </option>
                <option value="332"> T&eacute;cnico de RadioDiagn&oacute;stico y Radioterapia </option>
                <option value="333"> T&eacute;cnico en Administraci&oacute;n de Programas Sociales </option>
                <option value="335"> T&eacute;cnico en Construcci&oacute;n </option>
                <option value="336"> T&eacute;cnico en control de calidad </option>
                <option value="337"> T&eacute;cnico en Dise&ntilde;o editorial </option>
                <option value="338"> T&eacute;cnico en Dise&ntilde;o Gr&aacute;fico </option>
                <option value="339"> T&eacute;cnico en Edificaci&oacute;n </option>
                <option value="340"> T&eacute;cnico en Electricidad </option>
                <option value="342"> T&eacute;cnico en Electricidad Industrial </option>
                <option value="343"> T&eacute;cnico en Enfermer&iacute;a </option>
                <option value="344"> T&eacute;cnico en Fabricaci&oacute;n y montaje Industrial </option>
                <option value="345"> T&eacute;cnico en Geomensura </option>
                <option value="346"> T&eacute;cnico en Gesti&oacute;n y Control de calidad </option>
                <option value="347"> T&eacute;cnico en Log&iacute;stica </option>
                <option value="349"> T&eacute;cnico en Matricer&iacute;a </option>
                <option value="350"> T&eacute;cnico en Medio Ambiente </option>
                <option value="351"> T&eacute;cnico en Metalmec&aacute;nica </option>
                <option value="352"> T&eacute;cnico en Obras civiles </option>
                <option value="353"> T&eacute;cnico en Oleohidr&aacute;ulica y Neum&aacute;tica </option>
                <option value="354"> T&eacute;cnico en Planificaci&oacute;n Vial </option>
                <option value="356"> T&eacute;cnico en Procesos de la madera </option>
                <option value="357"> T&eacute;cnico en Refrigeraci&oacute;n </option>
                <option value="358"> T&eacute;cnico en Restauraci&oacute;n </option>
                <option value="359"> T&eacute;cnico en Soporte Computacional </option>
                <option value="360"> T&eacute;cnico en Topografia </option>
                <option value="361"> T&eacute;cnico en Tr&aacute;nsito y Transporte </option>
                <option value="363"> T&eacute;cnico Jur&iacute;dico </option>
                <option value="364"> T&eacute;cnico Marino </option>
                <option value="365"> T&eacute;cnico Superior en Administraci&oacute;n Agr&iacute;cola </option>
                <option value="366"> T&eacute;cnico Veterinario </option>
                <option value="367"> Tecnolog&iacute;a en gesti&oacute;n Forestal </option>
                <option value="368"> T&eacute;cnolog&iacute;a en Miner&iacute;a </option>
                <option value="370"> Tecnolog&iacute;a en Miner&iacute;a y Metalurg&iacute;a </option>
                <option value="371"> Tecnolog&iacute;a en Recursos del Mar </option>
                <option value="372"> Tecnolog&iacute;a en Sonido </option>
                <option value="373"> Tecnolog&iacute;a Forestal </option>
                <option value="374"> Tecnolog&iacute;a Industrial de alimentos del mar </option>
                <option value="375"> Tecnolog&iacute;a Industrial de la madera </option>
                <option value="377"> Tecnolog&iacute;a Industrial de los alimentos </option>
                <option value="378"> Tecnolog&iacute;a M&eacute;dica / Laboratorio </option>
                <option value="379"> Telecomunicaciones </option>
                <option value="380"> Teolog&iacute;a </option>
                <option value="381"> Terapia F&iacute;sica </option>
                <option value="382"> Terapia Ocupacional </option>
                <option value="384"> Trabajo Social / Servicio Social </option>
                <option value="385"> Traducci&oacute;n / Int&eacute;rprete </option>
                <option value="386"> Tripulante de Cabina / Azafata(o) </option>
                <option value="387"> Turismo  / Administraci&oacute;n en Turismo </option>
                <option value="388"> Turismo de Aventura </option>
                <option value="389"> Turismo T&eacute;cnico Menci&oacute;n Empresas de Viajes </option>
                <option value="391"> Turismo T&eacute;cnico Menci&oacute;n Tr&aacute;fico y Carga A&eacute;rea </option>
                <option value="392"> Ufolog&iacute;a </option>
                <option value="393"> Urbanismo </option>
                <option value="394"> Venta y Publicidad </option>
                <option value="395"> Zootecnia / Zoolog&iacute;a </option>
              </select>            </td>
          </tr>
          <tr>
            <td>Menci&oacute;n</td>
            <td><input name="mencion" id="mencion" value="" type="text"></td>
          </tr>
          <tr>
            <td>Instituci&oacute;n</td>
            <td><select name="institucion" id="institucion">
                <option selected="selected">Seleccione</option>
                <option value="5">Academia Polit&eacute;cnica Militar</option>
                <option value="6"> Academia T&eacute;cnica Naval </option>
                <option value="7"> AIEP </option>
                <option value="8"> C.F.T. ABACUS  I.T.C. </option>
                <option value="10"> C.F.T. Acuario Data de Santiago </option>
                <option value="11"> C.F.T. Alem&aacute;n de Vi&ntilde;a del Mar </option>
                <option value="12"> C.F.T. Alexander Von Humboldt </option>
                <option value="13"> C.F.T. ALFA </option>
                <option value="14"> C.F.T. Alpes </option>
                <option value="15"> C.F.T. Andr&eacute;s Bello </option>
                <option value="17"> C.F.T. AquaTech </option>
                <option value="18"> C.F.T. Austral </option>
                <option value="19"> C.F.T. Barros Arana </option>
                <option value="20"> C.F.T. C&aacute;mara de Comercio de Santiago </option>
                <option value="21"> C.F.T. Carlos Thielemann Martin </option>
                <option value="22"> C.F.T. Cedecom </option>
                <option value="24"> C.F.T. CEDEP </option>
                <option value="25"> C.F.T. CEDUC - UCN </option>
                <option value="26"> C.F.T. CEFONOR </option>
                <option value="27"> C.F.T. CEITEC </option>
                <option value="28"> C.F.T. Cenafom </option>
                <option value="29"> C.F.T. CENCO </option>
                <option value="31"> C.F.T. Centro de Ense&ntilde;anza de Alta Costura Paulina Diard </option>
                <option value="32"> C.F.T. Centro de Estudios Navieros Concepci&oacute;n </option>
                <option value="33"> C.F.T. Centro de Estudios Param&eacute;dicos de Santiago CEPSA </option>
                <option value="34"> C.F.T. Centro de Estudios Tur&iacute;sticos CET </option>
                <option value="35"> C.F.T. Centro Tecnol&oacute;gico Superior INFOMED </option>
                <option value="36"> C.F.T. CEPA de la III Regi&oacute;n </option>
                <option value="38"> C.F.T. CEPONAL </option>
                <option value="39"> C.F.T. Chileno-Norteamericano </option>
                <option value="40"> C.F.T. CIARTES </option>
                <option value="41"> C.F.T. COLCHAGUA </option>
                <option value="42"> C.F.T. CRECIC </option>
                <option value="43"> C.F.T. CROWNLIET </option>
                <option value="45"> C.F.T. de Educaci&oacute;n Superior Agr&iacute;cola Miguel Covarrubias Vald&eacute;s </option>
                <option value="46"> C.F.T. de ENAC </option>
                <option value="47"> C.F.T. de la Industria Gr&aacute;fica o CFT.  INGRAF </option>
                <option value="48"> C.F.T. de Tarapac&aacute; </option>
                <option value="49"> C.F.T. del Medio Ambiente </option>
                <option value="50"> C.F.T. Diego Portales </option>
                <option value="52"> C.F.T. ECATEMA </option>
                <option value="53"> C.F.T. EDUCAP </option>
                <option value="54"> C.F.T. El Libertador </option>
                <option value="55"> C.F.T. El Roble </option>
                <option value="56"> C.F.T. English Language Training Center </option>
                <option value="57"> C.F.T. ESANE DEL NORTE </option>
                <option value="59"> C.F.T. Escuela de Administraci&oacute;n Agr&iacute;cola de la S.N.A. </option>
                <option value="60"> C.F.T. Escuela de Altos Estudios de la Comunicaci&oacute;n y Educaci&oacute;n EACE </option>
                <option value="61"> C.F.T. Escuela de Artes Aplicadas Oficios del Fuego </option>
                <option value="62"> C.F.T. Escuela de Ciencias Tur&iacute;sticas e Idiomas EDECTI </option>
                <option value="63"> C.F.T. Escuela de Contabilidad y Administraci&oacute;n, Centro de Estudios Contables ECACEC </option>
                <option value="64"> C.F.T. Escuela de Interpretes INCENI </option>
                <option value="66"> C.F.T. Escuela Superior de Administraci&oacute;n de Negocios - ESANE </option>
                <option value="67"> C.F.T. Escuela Superior de Comercio Exterior </option>
                <option value="68"> C.F.T. Escuela Superior de Comercio Exterior de Santiago ESCES </option>
                <option value="69"> C.F.T. Estudio Profesor Valero </option>
                <option value="70"> C.F.T. ESUCOMEX </option>
                <option value="71"> C.F.T. Eugenio Gonz&aacute;lez Rojas </option>
                <option value="73"> C.F.T. FIRENZE </option>
                <option value="74"> C.F.T. FONTANAR </option>
                <option value="75"> C.F.T. Genoveva Guarniero </option>
                <option value="76"> C.F.T. ICADE </option>
                <option value="77"> C.F.T. ICEL </option>
                <option value="78"> C.F.T. Ignacio Domeyko </option>
                <option value="80"> C.F.T. INCOR </option>
                <option value="81"> C.F.T. INFOEDUC </option>
                <option value="82"> C.F.T. INSEC </option>
                <option value="83"> C.F.T. INSES </option>
                <option value="84"> C.F.T. Instituto Central de Capacitaci&oacute;n Educacional ICCE </option>
                <option value="85"> C.F.T. Instituto Chileno Alem&aacute;n de Cultura de San Antonio </option>
                <option value="87"> C.F.T. Instituto Chileno Brit&aacute;nico de Concepci&oacute;n </option>
                <option value="88"> C.F.T. Instituto de Capacitaci&oacute;n Luis Alberto Vera </option>
                <option value="89"> C.F.T. Instituto de Formaci&oacute;n Empresarial IFE Escuela de Negocios </option>
                <option value="90"> C.F.T. Instituto INTEC </option>
                <option value="91"> C.F.T. Instituto Superior Alem&aacute;n de Comercio INSALCO </option>
                <option value="92"> C.F.T. Instituto Superior de Computaci&oacute;n </option>
                <option value="94"> C.F.T. Instituto Superior de Electr&oacute;nica GAMMA </option>
                <option value="95"> C.F.T. Instituto Superior de Estudios Jur&iacute;dicos CANON </option>
                <option value="96"> C.F.T. Instituto T&eacute;cnol&oacute;gico de Computaci&oacute;n - I.T.C. </option>
                <option value="97"> C.F.T. INTECTUR </option>
                <option value="98"> C.F.T. International House </option>
                <option value="99"> C.F.T. INTESAN </option>
                <option value="101"> C.F.T. IPROSEC </option>
                <option value="102"> C.F.T. ITESA </option>
                <option value="103"> C.F.T. ITUR </option>
                <option value="104"> C.F.T. Javiera Carrera </option>
                <option value="105"> C.F.T. Jhon F. Kennedy </option>
                <option value="106"> C.F.T. Jorge Alvarez Echeverr&iacute;a </option>
                <option value="108"> C.F.T. Juan Bohon </option>
                <option value="109"> C.F.T. La Calera </option>
                <option value="110"> C.F.T. LAPLACE </option>
                <option value="111"> C.F.T. Los Fundadores </option>
                <option value="112"> C.F.T. Los Leones </option>
                <option value="113"> C.F.T. Lota-Arauco </option>
                <option value="115"> C.F.T. Massachusetts </option>
                <option value="116"> C.F.T. Osorno </option>
                <option value="117"> C.F.T. PRODATA </option>
                <option value="118"> C.F.T. PUKARA </option>
                <option value="119"> C.F.T. Salesianos Don Bosco </option>
                <option value="120"> C.F.T. San Agust&iacute;n de Talca </option>
                <option value="122"> C.F.T. Santa Mar&iacute;a del Trabajo </option>
                <option value="123"> C.F.T. Santo Tom&aacute;s </option>
                <option value="124"> C.F.T. Sim&oacute;n Bolivar </option>
                <option value="125"> C.F.T. SOEDUC Aconcagua </option>
                <option value="126"> C.F.T. SOEDUC La Ligua </option>
                <option value="127"> C.F.T. SOESTA </option>
                <option value="129"> C.F.T. TECCON </option>
                <option value="130"> C.F.T. Tecnol&oacute;gico PROTEC </option>
                <option value="131"> C.F.T. UDA </option>
                <option value="132"> C.F.T. Umbrale de Santiago </option>
                <option value="133"> C.F.T. UTEM </option>
                <option value="134"> C.F.T. y Capacitaci&oacute;n CEFOTEC </option>
                <option value="136"> C.F.T. ZIPTER </option>
                <option value="137"> CEAT </option>
                <option value="138"> Complejo Educacional Lo Barnechea </option>
                <option value="139"> DuocUC </option>
                <option value="140"> Ej&eacute;rcito de Chile </option>
                <option value="141"> Escuela de Aviaci&oacute;n </option>
                <option value="143"> Escuela de Carabineros </option>
                <option value="144"> Escuela de Comunicaci&oacute;n M&oacute;nica Herrera </option>
                <option value="145"> Escuela de Dise&ntilde;o V Regi&oacute;n </option>
                <option value="146"> Escuela de Ingenier&iacute;a Naval </option>
                <option value="147"> Escuela de Investigaciones </option>
                <option value="148"> Escuela de la Fuerza A&eacute;rea de Chile </option>
                <option value="150"> Escuela de Locutores de Chile </option>
                <option value="151"> Escuela de Medicina V Regi&oacute;n </option>
                <option value="152"> Escuela de m&uacute;sica </option>
                <option value="153"> Escuela Militar </option>
                <option value="154"> Escuela Naval </option>
                <option value="155"> ESE - Estudios Superiores de la Empresa </option>
                <option value="157"> I.P.  Santo Tom&aacute;s </option>
                <option value="158"> I.P. Adventista </option>
                <option value="159"> I.P. Agrario Adolfo Matthei </option>
                <option value="160"> I.P. Alem&aacute;n Wilhelm Von Humboldt </option>
                <option value="161"> I.P. Alpes </option>
                <option value="162"> I.P. Andalien </option>
                <option value="164"> I.P. Asociaci&oacute;n Chilena de Seguridad </option>
                <option value="165"> I.P. Carlos Casanueva </option>
                <option value="166"> I.P. CEC </option>
                <option value="167"> I.P. Cenafom </option>
                <option value="168"> I.P. CEPECH </option>
                <option value="169"> I.P. Chileno Brit&aacute;nico de Cultura </option>
                <option value="171"> I.P. CIISA </option>
                <option value="172"> I.P. Concepci&oacute;n </option>
                <option value="173"> I.P. De Arte y Comunicaci&oacute;n ARCOS </option>
                <option value="174"> I.P. de Ciencias de la Computaci&oacute;n Acuario Data </option>
                <option value="175"> I.P. de Ciencias y Artes INCACEA </option>
                <option value="176"> I.P. de Ciencias y Educaci&oacute;n Helen Keller </option>
                <option value="178"> I.P. de ENAC </option>
                <option value="179"> I.P. de Estudios bancarios Guillermo Subercaseaux </option>
                <option value="180"> I.P. de Formaci&oacute;n Empresarial </option>
                <option value="181"> I.P. de las Comunicaciones PROCOM </option>
                <option value="182"> I.P. de Los Angeles </option>
                <option value="183"> I.P. de Providencia </option>
                <option value="185"> I.P. del Pac&iacute;fico </option>
                <option value="186"> I.P. Diego Portales </option>
                <option value="187"> I.P. Dr. Virginio G&oacute;mez G. </option>
                <option value="188"> I.P. EATRI </option>
                <option value="189"> I.P. ECACEC </option>
                <option value="190"> I.P. Escuela de Contadores Auditores de Santiago </option>
                <option value="192"> I.P. Escuela Latinoamericana de Idiomas ELADI </option>
                <option value="193"> I.P. Escuela Moderna de M&uacute;sica </option>
                <option value="194"> I.P. Escuela Nacional de Relaciones P&uacute;blicas </option>
                <option value="195"> I.P. ESUCOMEX </option>
                <option value="196"> I.P. Hogar Catequ&iacute;stico </option>
                <option value="197"> I.P. INDAE o Campus </option>
                <option value="199"> I.P. Instituto Profesional de Chile </option>
                <option value="200"> I.P. La Araucana </option>
                <option value="201"> I.P. Latinoamericano de Comercio Exterior </option>
                <option value="202"> I.P. Libertador de Los Andes </option>
                <option value="203"> I.P. Los Leones </option>
                <option value="204"> I.P. Luis Galdames </option>
                <option value="206"> I.P. Manpower </option>
                <option value="207"> I.P. Nacional del F&uacute;tbol </option>
                <option value="208"> I.P. Profesional Campus </option>
                <option value="209"> I.P. San Bartolom&eacute; de La Serena </option>
                <option value="210"> I.P. Superior de Artes y Ciencias de la Comunicaci&oacute;n </option>
                <option value="211"> I.P. Superior de Electr&oacute;nica Gamma </option>
                <option value="213"> I.P. Teatro la Casa </option>
                <option value="214"> I.P. Valle Central </option>
                <option value="215"> IEDE Escuela de Negocios Espa&ntilde;ola </option>
                <option value="216"> INACAP </option>
                <option value="217"> Instituto AIEP </option>
                <option value="218"> Otra Instituci&oacute;n </option>
                <option value="220"> Pontificia U. Cat&oacute;lica de Chile </option>
                <option value="221"> Pontificia U. Cat&oacute;lica de Valpara&iacute;so </option>
                <option value="222"> Seminario </option>
                <option value="223"> T&eacute;cnico Industrial (SOFOFA) </option>
                <option value="224"> U. Academia de Humanismo Cristiano </option>
                <option value="225"> U. Adolfo Iba&ntilde;ez </option>
                <option value="227"> U. Alberto Hurtado </option>
                <option value="228"> U. Alonso de Ovalle </option>
                <option value="229"> U. Arcis </option>
                <option value="230"> U. Arturo Prat de Iquique </option>
                <option value="231"> U. Austral de Chile </option>
                <option value="232"> U. Aut&oacute;noma del Sur </option>
                <option value="234"> U. Bernardo O`Higgins </option>
                <option value="235"> U. Bolivariana </option>
                <option value="236"> U. Cat&oacute;lica Blas Ca&ntilde;as </option>
                <option value="237"> U. Cat&oacute;lica Cardenal Ra&uacute;l Silva Henr&iacute;quez </option>
                <option value="238"> U. Cat&oacute;lica de la Sant&iacute;sima Concepci&oacute;n </option>
                <option value="239"> U. Cat&oacute;lica de Temuco </option>
                <option value="241"> U. Cat&oacute;lica del Maule </option>
                <option value="242"> U. Cat&oacute;lica del Norte </option>
                <option value="243"> U. Central </option>
                <option value="244"> U. de Aconcagua </option>
                <option value="245"> U. de Antofagasta </option>
                <option value="246"> U. de Atacama </option>
                <option value="248"> U. de Chile </option>
                <option value="249"> U. de Ciencias de la Inform&aacute;tica </option>
                <option value="250"> U. de Concepci&oacute;n </option>
                <option value="251"> U. de La Frontera de Temuco </option>
                <option value="252"> U. de la Serena </option>
                <option value="253"> U. de las Am&eacute;ricas </option>
                <option value="255"> U. de los Andes </option>
                <option value="256"> U. de los Lagos </option>
                <option value="257"> U. de Magallanes </option>
                <option value="258"> U. de Playa Ancha </option>
                <option value="259"> U. de Puerto Varas </option>
                <option value="260"> U. de San Andr&eacute;s </option>
                <option value="262"> U. de Santiago de Chile </option>
                <option value="263"> U. de Talca </option>
                <option value="264"> U. de Tarapac&aacute; </option>
                <option value="265"> U. de Valpara&iacute;so </option>
                <option value="266"> U. de Vi&ntilde;a del Mar </option>
                <option value="267"> U. del B&iacute;o B&iacute;o </option>
                <option value="269"> U. del Desarrollo </option>
                <option value="270"> U. del Mar </option>
                <option value="271"> U. del Pac&iacute;fico </option>
                <option value="272"> U. Diego Portales </option>
                <option value="273"> U. Educares </option>
                <option value="274"> U. Finis Terrae </option>
                <option value="276"> U. Francisco de Aguirre de la Serena </option>
                <option value="277"> U. Francisco de Vitoria </option>
                <option value="278"> U. Gabriela Mistral </option>
                <option value="279"> U. Iberoamericana de Ciencias y Tecnolog&iacute;a, UNICYT </option>
                <option value="280"> U. Internacional SEK </option>
                <option value="281"> U. La Rep&uacute;blica </option>
                <option value="283"> U. las Condes </option>
                <option value="284"> U. Mariano Ega&ntilde;a </option>
                <option value="285"> U. Mayor </option>
                <option value="286"> U. Metropolitana de Ciencias de la Educaci&oacute;n </option>
                <option value="287"> U. Miguel de Cervantes </option>
                <option value="288"> U. Nacional Andr&eacute;s Bello </option>
                <option value="290"> U. San Sebasti&aacute;n </option>
                <option value="291"> U. Santo Tom&aacute;s </option>
                <option value="292"> U. T&eacute;cnica Federico Santa Mar&iacute;a </option>
                <option value="293"> U. Tecnol&oacute;gica Metropolitana </option>
                <option value="294"> U. Tecnol&oacute;gica Vicente P&eacute;rez Rosales </option>
                <option value="295"> U. UNIACC </option>
                <option value="297"> Universidad Adventista de Chile </option>
                <option value="298"> Universidad Mar&iacute;tima de Chile </option>
                <option value="299"> Universidad Pedro de Valdivia </option>
                <option value="300"> Universidad Tecnol&oacute;gica de Chile INACAP (UTC) </option>
              </select>            </td>
          </tr>
          <tr>
            <td>Estado de estudio</td>
            <td><select name="estadoestudio" id="estadoestudio">
                <option selected="selected">Seleccione</option>
                <option value="Egresado">Egresado</option>
                <option value="Titulado">Titulado</option>
                <option value="Estudiando">Estudiando</option>
              </select>            </td>
          </tr>
          <tr>
            <td>A&ntilde;o de egreso</td>
            <td><select name="anoegresosuperior" id="anoegresosuperior">
                <option>Seleccione</option>
                <option value="2007">2007</option>
                <option value="2006">2006</option>
                <option value="2005">2005</option>
                <option value="2004">2004</option>
                <option value="2003">2003</option>
                <option value="2002">2002</option>
                <option value="2001">2001</option>
                <option value="2000">2000</option>
                <option value="1999">1999</option>
                <option value="1998">1998</option>
                <option value="1997">1997</option>
                <option value="1996">1996</option>
                <option value="1995">1995</option>
                <option value="1994">1994</option>
                <option value="1993">1993</option>
                <option value="1992">1992</option>
                <option value="1991">1991</option>
                <option value="1990">1990</option>
                <option value="1989">1989</option>
                <option value="1988">1988</option>
                <option value="1987">1987</option>
                <option value="1986">1986</option>
                <option value="1985">1985</option>
                <option value="1984">1984</option>
                <option value="1983">1983</option>
                <option value="1982">1982</option>
                <option value="1981">1981</option>
                <option value="1980">1980</option>
                <option value="1979">1979</option>
                <option value="1978">1978</option>
                <option value="1977">1977</option>
                <option value="1976">1976</option>
                <option value="1975">1975</option>
                <option value="1974">1974</option>
                <option value="1973">1973</option>
                <option value="1972">1972</option>
                <option value="1971">1971</option>
                <option value="1970">1970</option>
                <option value="1969">1969</option>
                <option value="1968">1968</option>
                <option value="1967">1967</option>
                <option value="1966">1966</option>
                <option value="1965">1965</option>
                <option value="1964">1964</option>
                <option value="1963">1963</option>
                <option value="1962">1962</option>
                <option value="1961">1961</option>
                <option value="1960">1960</option>
                <option value="1959">1959</option>
                <option value="1958">1958</option>
                <option value="1957">1957</option>
                <option value="1956">1956</option>
                <option value="1955">1955</option>
                <option value="1954">1954</option>
                <option value="1953">1953</option>
                <option value="1952">1952</option>
                <option value="1951">1951</option>
                <option value="1950">1950</option>
                <option value="1949">1949</option>
                <option value="1948">1948</option>
                <option value="1947">1947</option>
                <option value="1946">1946</option>
                <option value="1945">1945</option>
                <option value="1944">1944</option>
                <option value="1943">1943</option>
                <option value="1942">1942</option>
                <option value="1941">1941</option>
                <option value="1940">1940</option>
              </select>            </td>
          </tr>
        </table>
        <table width="800" cellpadding="0" cellspacing="0">
          <tr>
            <td colspan="4" bgcolor="#ffcc00">Idioma*</td>
          </tr>
          <tr>
            <td colspan="4"><table width="800" border="0" class="estilo1">
                <tbody>
                  <tr>
                    <td>Idioma</td>
                    <td>Hablado</td>
                    <td>Escrito</td>
                    <td>Traducci&oacute;n</td>
                    <td>Idioma</td>
                    <td>Hablado</td>
                    <td>Escrito</td>
                    <td>Traducci&oacute;n</td>
                  </tr>
                  <tr>
                    <td><input name="ingles" id="ingles" checked="checked" type="checkbox">
                      Ingl&eacute;s</td>
                    <td colspan="3"><div>
                        <input name="nivelingles" id="radio3" value="Hablado" checked="checked" type="radio">
                        <input name="nivelingles" id="radio4" value="Escrito" type="radio">
                        <input name="nivelingles" id="radio5" value="Traducci&oacute;n" type="radio">
                    </div></td>
                    <td><input name="espanol" id="espanol" type="checkbox">
                      Espa&ntilde;ol</td>
                    <td colspan="3"><div>
                        <input name="nivelespanol" id="radio10" value="Hablado" type="radio">
                        <input name="nivelespanol" id="radio11" value="Escrito" type="radio">
                        <input name="nivelespanol" id="radio12" value="Traducci&oacute;n" type="radio">
                    </div></td>
                  </tr>
                  <tr>
                    <td><input name="frances" id="frances" type="checkbox">
                      Franc&eacute;s</td>
                    <td colspan="3"><div>
                        <input name="nivelfrances" id="radio6" value="Hablado" type="radio">
                        <input name="nivelfrances" id="radio7" value="Escrito" type="radio">
                        <input name="nivelfrances" id="radio8" value="Traducci&oacute;n" type="radio">
                    </div></td>
                    <td><input name="italiano" id="italiano" type="checkbox">
                      Italiano</td>
                    <td colspan="3"><div>
                        <input name="nivelitaliano" id="radio13" value="Hablado" type="radio">
                        <input name="nivelitaliano" id="radio14" value="Escrito" type="radio">
                        <input name="nivelitaliano" id="radio15" value="Traducci&oacute;n" type="radio">
                    </div></td>
                  </tr>
                  <tr>
                    <td><input name="aleman" id="aleman" type="checkbox">
                      Alem&aacute;n</td>
                    <td colspan="3"><div>
                        <input name="nivelaleman" id="radio9" value="Hablado" type="radio">
                        <input name="nivelaleman" id="radio10" value="Escrito" type="radio">
                        <input name="nivelaleman" id="radio11" value="Traducci&oacute;n" type="radio">
                    </div></td>
                    <td><input name="otro" id="otro" type="checkbox">
                      Otro
                      <input name="otrotxt" id="otrotxt" value="" type="text"></td>
                    <td colspan="3"><div>
                        <input name="nivelotro" id="radio18" value="Hablado" type="radio">
                        <input name="nivelotro" id="radio19" value="Escrito" type="radio">
                        <input name="nivelotro" id="radio20" value="Traducci&oacute;n" type="radio">
                    </div></td>
                  </tr>
                </tbody>
            </table></td>
          </tr>
          <tr>
            <td colspan="4"><p>&nbsp;</p>
            <p align="center"><span class="Estilo5">
              <input name="submit" id="submit" value="Buscar" type="button" onclick="advancedFind();">
            </span><span class="Estilo5">
             <input name="submit2" id="submit2" value="Limpliar" type="button">
            </span></p></td>
          </tr>
        </table>
      </div>
