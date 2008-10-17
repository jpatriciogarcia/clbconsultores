function nueva_opcion(texto,valor){
	this.texto = texto
	this.valor = valor
}
/***** REGIONES *****/
var RM=new Array()
	RM[0] = new nueva_opcion('**Region Metropolitana**')
	RM[1] = new nueva_opcion("Cordillera",'Cordillera')
	RM[2] = new nueva_opcion("Maipo",'Maipo')


var uno=new Array()
	uno[0] = new nueva_opcion('**Primera Region**')
	uno[1] = new nueva_opcion("Arica",'Arica')
	uno[2] = new nueva_opcion("Parinacota",'Parinacota')

/***** PROVINCIAS *****/
//RM
var Cordillera = new Array()
	Cordillera[0] = new nueva_opcion('**Provincia Cordillera**')
	Cordillera[1] = new nueva_opcion("Puente Alto",null)
	Cordillera[2] = new nueva_opcion("Pirque" ,null)

var Maipo = new Array()
	Maipo[0] = new nueva_opcion('**Provincia Maipo**')
	Maipo[1] = new nueva_opcion("San Bernardo",null)

//PRIMERA REGION
var Arica = new Array()
	Arica[0] = new nueva_opcion('**Provincia Arica**')
	Arica[1] = new nueva_opcion("Arica",null)

var Parinacota = new Array()
	Parinacota[0] = new nueva_opcion('**Provincia Parinacota**')
	Parinacota[1] = new nueva_opcion("Parinacota",null)

function cambiar_lista(cual,donde){
	if(cual.selectedIndex != 0){
		donde.length=0
		cual = eval(cual.value)
		for(m=0; m<cual.length; m++){
			var nuevaOpcion = new Option(cual[m].texto);
			donde.options[m] = nuevaOpcion;
			if(cual[m].valor != null){
				donde.options[m].value = cual[m].valor
			}
			else{
				donde.options[m].value = cual[m].texto
			}
		}
	}
}