function calcularTotal (cantidad,categoria){
    let total=0;
    switch(categoria){
        case 'estudiante':
            total=(200*0.2)*cantidad;
            console.log(cantidad)
            break;
        case 'trainee':
            total=(200*0.5)*cantidad;
            break;
        case 'junior':
            total=(200*0.85)*cantidad;
            break;
    }
    return total;
}

function resetearCampos(){
    document.querySelectorAll("input").forEach(function (input) {
        input.value = "";
    });
    document.getElementById("inputTotal").value="Total a pagar: $";
}

function actualizarTotal() {
    const cantidad = parseFloat(document.getElementById("inputCantidad").value);
    const categoria = document.getElementById("selectCategoria").value;
    const total = calcularTotal(cantidad, categoria);
    document.getElementById("inputTotal").value = "Total a pagar: $" + total;
}

document.getElementById("btnBorrar").addEventListener('click', function(event) {
    event.preventDefault(); // Evita la recarga de la página
    resetearCampos();
});
document.getElementById("btnResumen").addEventListener('click', function(event) {
    event.preventDefault(); // Evita la recarga de la página
    actualizarTotal();
});