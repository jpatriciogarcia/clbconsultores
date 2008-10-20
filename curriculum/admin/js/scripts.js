
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

