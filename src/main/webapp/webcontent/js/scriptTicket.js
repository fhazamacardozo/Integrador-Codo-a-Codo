function calcularTotal(cantidad, categoria) {
    let total = 0;
    switch (categoria) {
        case 'estudiante':
            total = (200 * 0.2) * cantidad;
            //80% descuento
            break;
        case 'trainee':
            total = (200 * 0.5) * cantidad;
            //50%descuento
            break;
        case 'junior':
            total = (200 * 0.85) * cantidad;
            //15%descuento
            break;
    }
    return total;
}

function resetearCampos() {
    //borro los contenidos de los inputs
    document.querySelectorAll("input").forEach(function (input) {
        input.value = "";
    });
    //reseteo el inputTotal
    document.getElementById("inputTotal").value = "Total a pagar: $";
}

function actualizarTotal() {
    //recupero la cantidad
    let cantidad = parseFloat(document.getElementById("inputCantidad").value);
    //cuando no hay cantidad seleccionada devuelve NaN
    if (isNaN(cantidad)) {
        cantidad = 0;
    }
    //recupero la categoria
    const categoria = document.getElementById("selectCategoria").value;
    //calculo el total usando la funcion que hice arriba
    const total = calcularTotal(cantidad, categoria);

    //actualizo el inputTotal
    document.getElementById("inputTotal").value = "Total a pagar: $" + total;
}

//agrego escuchador de eventos para ambos botones, al hacer click llama a las funciones
document.getElementById("btnBorrar").addEventListener('click', function (event) {
    event.preventDefault(); // Evita la recarga de la página
    resetearCampos();
});
document.getElementById("btnResumen").addEventListener('click', function (event) {
    event.preventDefault(); // Evita la recarga de la página
    actualizarTotal();
});