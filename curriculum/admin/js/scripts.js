
function getUrl(url, div) {
    new Ajax.Updater(div, url, {
        evalScripts: true,
        onLoading: function() { $('loading').show(); },
        onComplete: function() { $('loading').hide(); }
    });
}


function saveForm( form ) {
    var valid = new Validation(form, {onSubmit: false});
    var result = valid.validate();

    $(form).enable();
    if ( result ) {
        $(form).request({
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

