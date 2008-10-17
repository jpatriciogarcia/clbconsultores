var cactual=0
function cargar(cual,nuevo2){
    if(cual=="nuevo" && cactual!=1){
        new Ajax.Updater('curriculum', 'paso1.php', {
            parameters: {nuevo: nuevo2},
            evalScripts: true,
            onLoading: function() { $('loading').show(); },
            onComplete: function() { $('loading').hide(); }
        });
        //cactual=1;
    }else if(cual=="modificar" && cactual!=2){
        new Ajax.Updater('curriculum', 'login.php', {
            parameters: {text: 1},
            evalScripts: true,
            onLoading: function() { $('loading').show(); },
            onComplete: function() { $('loading').hide(); }
        });
        //cactual=2
    }
}
function pasos(cual){
    if(cual=="fin") cactual=0;
    new Validation('curriculum');
    var valid = new Validation('curriculum', {onSubmit:false});
    var result = valid.validate();
    if(result){
        if(cual=="backpaso1" || cual=="backpaso2"){
            $('curriculum').request({
                method: 'post',
                parameters: {volver: cual},
                onLoading: function() { $('loading').show(); },
                onComplete: function(request){
                    $('loading').hide();
                    $('curriculum').update(request.responseText);
                }
            })
        }else{
            $('curriculum').request({
                method: 'post',
                onLoading: function() { $('loading').show(); },
                onComplete: function(request){
                    $('loading').hide();
                    $('curriculum').update(request.responseText);
                }
            })
        }
    }
}
function login(){
    new Validation('curriculum');
    var valid = new Validation('curriculum', {onSubmit:false});
    var result = valid.validate();
    if(result){
        new Ajax.Updater('curriculum', 'login.php', {
            parameters: $('curriculum').serialize(true),
            onLoading: function() { $('loading').show(); },
            onComplete: function() { $('loading').hide(); }
        });
    }
}
function logout(){
    new Ajax.Updater('curriculum', 'logout.php', {
        parameters: {text: 1},
        evalScripts: true,
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}
function combo_direccion(donde,valor){
    new Ajax.Updater(donde, 'direccion.php', {
        parameters: {codigo: valor, accion: donde},
        evalScripts: true,
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}
function ingresarut(e){
    tecla = (document.all) ? e.keyCode : e.which;
    //codigo ascii
    if (tecla==8) return true; //retroceso
    if (tecla==0) return true; //tabulador
    if (tecla==45) return true; //guion -
    if (tecla==107) return true; //k
    if (tecla==75) return true; //K
    //patron =/[A-Za-z]/; // Solo acepta letras
    patron = /\d/; //Solo acepta números
    //patron = /\w/; //Acepta números y letras
    //patron = /\D/; //No acepta números
    te = String.fromCharCode(tecla);
    return patron.test(te);
}


function AgregarCarrera() {

    if( $('carrera').value && $('mencion').value && $('institucion').value && $('estadoestudio').value && $('anoegresosuperior').value ) {
        new Ajax.Updater('div-carreras', 'carreras.php', {
            parameters: {carrera: $('carrera').value, mencion: $('mencion').value, institucion: $('institucion').value, estadoestudio: $('estadoestudio').value, anoegresosuperior: $('anoegresosuperior').value },
            evalScripts: true,
            onLoading: function() { $('loading').show(); },
            onComplete: function() { $('loading').hide(); }
        });
    }
    else {
        alert('Debe completar todos los campos.');
    }
}

function EliminarCarrera(id) {
    new Ajax.Updater('div-carreras', 'carreras.php', {
        parameters: {id: id },
        evalScripts: true,
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}

function VerCarrera() {
    new Ajax.Updater('div-carreras', 'carreras.php', {
        parameters: {},
        evalScripts: true,
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}



function AgregarExperiencia() {

    if( $('anolaboral1').value && $('anolaboral2').value && $('cargo').value && $('empresa').value ) {
        new Ajax.Updater('div-experiencia', 'experiencia.php', {
            parameters: {anolaboral1: $('anolaboral1').value, anolaboral2: $('anolaboral2').value, cargo: $('cargo').value, empresa: $('empresa').value, objetivos: $('objetivos').value, logros: $('logros').value },
            evalScripts: true,
            onLoading: function() { $('loading').show(); },
            onComplete: function() { $('loading').hide(); }
        });
    }
    else {
        alert('Debe completar todos los campos.');
    }
}

function EliminarExperiencia(id) {
    new Ajax.Updater('div-experiencia', 'experiencia.php', {
        parameters: {id: id },
        evalScripts: true,
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}

function VerExperiencia() {
    new Ajax.Updater('div-experiencia', 'experiencia.php', {
        parameters: {},
        evalScripts: true,
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}