
function validar_inicio() {
    var usuario = document.getElementById('txUser').value;
    if (usuario == '') {
        alert('Debe de ingresar un usuario');
    }
    else {
        alert('El usuario y/o contraseña es incorrecto(s).');
    }
}

function checkUsuario(e) {
    tecla = (document.all) ? e.keyCode : e.which;

    //Tecla de retroceso para borrar, siempre la permite
    if (tecla == 8) {
        return true;
    }

    // Patron de entrada, en este caso solo acepta numeros y punto
    patron = /[0-9]/;
    tecla_final = String.fromCharCode(tecla);
    return patron.test(tecla_final);
}