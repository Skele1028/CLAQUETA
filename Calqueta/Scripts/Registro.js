function validar_clave() {
    var contra1 = document.getElementById('txContrasenia').value;
    var contra2 = document.getElementById('txContrasenia2').value;
    if (contra1 != '' && contra2 == '') {
        alert('Debe introducir su clave en los dos campos.');
        return false;
    }
    else {
        if (contra1 != contra2) {
            alert('Las claves introducidas no son iguales');
            return false;
        }
        else {
            return true;
        }
    }
}
function validar_correo() {
    var correo1 = document.getElementById('txCorreo').value;
    var correo2 = document.getElementById('txCorreo2').value;
    if (correo1 != '' && correo2 == '') {
        alert('Debe introducir su correo en los dos campos.');
        return false;
    }
    else {
        if (correo1 != correo2) {
            alert('Los correos introducidos no son iguales');
            return false;
        }
        else {
            return true;
        }
    }
}

function checkNombre(e) {
    tecla = (document.all) ? e.keyCode : e.which;

    //Tecla de retroceso para borrar, siempre la permite
    if (tecla == 8) {
        return true;
    }

    // Patron de entrada, en este caso solo acepta letras
    patron = /[A-Za-z]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}

function checkDocumento(e) {
    tecla = (document.all) ? e.keyCode : e.which;

    //Tecla de retroceso para borrar, siempre la permite
    if (tecla == 8) {
        return true;
    }

    // Patron de entrada, en este caso solo acepta numeros y punto
    patron = /[0-9.]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}