
function NuevoCurriculum() {
    /*
    var win = new Window({
    url: '../',
    title: 'Nuevo Curriculum',
    //className: 'mac_os_x',
    resizable: false,
    maximizable: false,
    minimizable: false,
    draggable: false,
    width: 750,
    height: 550
    });
    win.showCenter(true);
    */
    window.open('../', 'Curriculum', 'width=800, height=600, scrollbars=yes');

}

function EditCurriculum(rut) {
    window.open('modificar.php?rut=' + rut, 'Curriculum', 'width=800, height=600, scrollbars=yes');
}

function DeleteCurriculum(rut) {

	if(confirm("Está seguro que desea aliminar el curriculum?")) { 
		new Ajax.Request('eliminar.php', {
	        evalScripts: true,
	        parameters: {rut: rut},
	        onLoading: function() { $('loading').show(); },
	        onComplete: function(transport) { $('loading').hide(); transport.responseText.evalScripts(); }
	    });

	    $('form-main').action = 'listado.php';
	    $('form-main').request({
	        onLoading: function() { $('loading').show(); new Effect.Opacity('marcotabla', {from: 1, to: 0}); },
	        onComplete: function(transport) { $('loading').hide(); new Effect.Opacity('marcotabla', {from: 0, to: 1}); $('marcotabla').update(transport.responseText) }
	    });


   }

}


function LogIn() {
    new Ajax.Request('login.php', {
        evalScripts: true,
        parameters: {username: $('username').value, password: $('password').value},
        onLoading: function() { $('loading').show(); },
        onComplete: function(transport) { $('loading').hide(); transport.responseText.evalScripts(); }
    });
}


function LogOut() {
    new Ajax.Request('logout.php', {
        evalScripts: true,
        onLoading: function() { $('loading').show(); },
        onComplete: function(transport) { transport.responseText.evalScripts(); }
    });
}


function getUrl(url, div) {
    new Ajax.Updater(div, url, {
        evalScripts: true,
        onLoading: function() { $('loading').show(); new Effect.Opacity(div, {from: 1, to: 0}); },
        onComplete: function() { $('loading').hide(); new Effect.Opacity(div, {from: 0, to: 1}); }
    });
}


function advancedFind() {

    $('form-main').action = 'listado.php';

    $('form-main').request({
        onLoading: function() { $('loading').show(); new Effect.Opacity('marcotabla', {from: 1, to: 0}); },
        onComplete: function(transport) { $('loading').hide(); new Effect.Opacity('marcotabla', {from: 0, to: 1}); $('marcotabla').update(transport.responseText) }
    });
}

function addCampaign( ) {

    $('form-main').action = 'puesto.php';

    var valid = new Validation('form-main', {onSubmit: false});
    var result = valid.validate();

    $('form-main').enable();
    if ( result ) {
        $('form-main').request({
            onLoading: function(transport) { $('loading').show(); },
            onComplete: function(transport) { $('loading').hide(); transport.responseText.evalScripts(); }
        });
    }
}


function deleteEmpresa( id ) {
    new Ajax.Updater('div-form', 'empresa.php', {
        evalScripts: true,
        parameters: {id: id, action: 'delete'},
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}


function updateEmpresa( id ) {
    new Ajax.Updater('div-form', 'empresa.php', {
        evalScripts: true,
        parameters: {id: id, action: 'edit'},
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}


function deletePuesto( id ) {
    new Ajax.Updater('div-form', 'puesto.php', {
        evalScripts: true,
        parameters: {id: id, action: 'delete'},
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}


function updatePuesto( id ) {
    new Ajax.Updater('div-form', 'puesto.php', {
        evalScripts: true,
        parameters: {id: id, action: 'edit'},
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}


function sendLink( puesto ) {
    new Ajax.Request('puesto.php', {
        evalScripts: true,
        parameters: {puesto: puesto, action: 'link'},
        onLoading: function(transport) { $('loading').show(); },
        onComplete: function(transport) { $('loading').hide(); transport.responseText.evalScripts();}
    });
}

