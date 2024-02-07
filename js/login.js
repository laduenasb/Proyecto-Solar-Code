// Inicializar una variable para que me capture el formulario

const loginForm= document.querySelector('#login-formulario');

// Inicializar un evento para evitar envíos de datos al recargar un sitio web
loginForm.addEventListener("submit",(e)=>{
	// Evita que el formulario se envíe y que se recargue automáticamente
	e.preventDefault();
	// Inicializar unas variables que me capturen los valores de los cmapos de entrada
	const email = document.querySelector('#email').value;
	const password=document.querySelector("#password").value;

	const Users = JSON.parse(localStorage.getItem('users')) || [];

	// Verificar si el correo y la clave coinciden con los valores almacenados en el arreglo
	const validUser = Users.find(user=>user.email === email && user.password === password);

	// Si los datos de los usuarios no concuerdan nos mostrará un msj de alerta
	if(!validUser) {
		Swal.fire({
			title: "Error",
			text: "Usuario y/o contraseña son incorrectos!",
			icon: "error"
		});
		return "";
	}
	// Si los datos de los usuarios si concuerda, nos mostrará un msj de bienvenida
	// alert(`Bienvenido de nuevo ${validUser.name}`);
	Swal.fire({
		title: `Bienvenido de nuevo ${validUser.name}`,
		icon: "success"
	});
	// Convertimos los datos de logeo en cadenas de texto, para que me permita ingresar al sistema
	localStorage.setItem("login_success",JSON.stringify(validUser))

	// Cuando se loguee el usuario, que nos redirija al home (index)

	// Esperar 3 segundos antes de redirigir al usuario
	setTimeout(function() {
		// Que nos redirija al login después de 3 segundos
		window.location.href = "index.html";
	}, 2000); // 2000 milisegundos = 2 segundos
})