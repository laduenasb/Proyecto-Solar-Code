function submitForm()  {
    // Obtener valores de los campos
    const name = document.getElementById('name').value;
    const phone =document.getElementById('phone').value;
    const email = document.getElementById('email').value;
    const message = document.getElementById('message').value;

    // Verificar si los campos requeridos están llenos
    if (name.trim() === ''|| phone.trim() === ''|| email.trim() === '' || message.trim() === '') {
        Swal.fire({
            icon: 'error',
            title: 'Error',
            text: 'Por favor, completa todos los campos.',
        });
    } else {
        // Aquí puedes agregar lógica para enviar el formulario (por ejemplo, mediante AJAX)
        Swal.fire({
            icon: 'success',
            title: 'Éxito',
            text: 'Formulario enviado con éxito!',
            
        });
        // Envía el formulario
        document.getElementById('formulario').submit();
        // Limpiar campos
        document.getElementById('name').value = "";
        document.getElementById('phone').value = "";
        document.getElementById('email').value = "";
        document.getElementById('message').value = "";
    }
}
