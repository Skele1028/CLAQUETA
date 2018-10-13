function checkNombre(e) {
    tecla = (document.all) ? e.keyCode : e.which;
    //Tecla de retroceso para borrar, siempre la permite
    if (tecla == 8) {
        return true;
    }
    // Patron de entrada, en este caso solo acepta letras
    patron = /[A-Za-z]/;
    tecla_final = String.fromCharCode(tecla);
    focus();
    return patron.test(tecla_final);
}
//function checkDocumento(e) {
 //   tecla = (document.all) ? e.keyCode : e.which;
 //   //Tecla de retroceso para borrar, siempre la permite
 //   if (tecla == 8) {
 //       return true;
 //   }
 //   // Patron de entrada, en este caso solo acepta letras
 //   patron = /^[0-9]\d$/;
 //   tecla_final = String.fromCharCode(tecla);

 //   return patron.test(tecla_final);
//}

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
            //buscar como desabilitar un boton
            return false;
        }
        else {
            return true;
        }
    }
}

function validar_clave() {
    var cla1 = document.getElementById('txContra').value;
    var cla2 = document.getElementById('txContra2').value;
    if (cla1 != '' && cla2 == '') {
        alert('Debe introducir su clave en los dos campos.');
        return false;
    }
    else {
        if (cla1 != cla2) {
            alert('Las claves introducidas no son iguales');
            return false;
        }
        else {
            return true;
        }
    }
}
