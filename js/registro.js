// Inicializar una variable para que almacene toda la info del formulario
const signupForm = document.querySelector("#registro-formulario");
// Agregar un evento para que me evite que la página se recargue sin antes de envíar el formulario

signupForm.addEventListener("submit",(e)=>{
	e.preventDefault();
	// Inicializar una variables para que me capture los datos ingresados en los campos de entrada
	const name = document.querySelector("#nombre").value;
	const numero = document.querySelector("#numero").value;
	const email = document.querySelector("#email").value;
	const password=document.querySelector("#password").value;

	// Inicializar una variable que reciba los datos que serán guardados en el JSON	 (array de datos)

	const Users = JSON.parse(localStorage.getItem('users')) || [];
	
	// Verificar si el correo electrónico que se trata de ingresar se encuentra registrado o no
	const isUserRegistered = Users.find(user => user.email === email);
	// Si el correo ya existe, nos mostrara un mensaje de alerta diciendo que ya se encuentra registrado el correo
	if(isUserRegistered){
		Swal.fire({
			icon: "error",
			title: "Correo",
			text: "El correo que ingresas, ya se encuentra registrado",
		});
		// Se deja el return vacio para detener el programa
		return ""
	}
	// Se verifica que el número de telefono tenga exactamente 10 digitos con una expresión regular
	const numero_validar = /^[0-9]{10}$/;
	if (!numero_validar.test(numero)) {
		Swal.fire({
			icon: "error",
			title: "Número",
			text: "Por favor, introduce un número de teléfono válido con exactamente 10 dígitos.",
		});
		// Se deja el return vacio para detener el programa
		return "";
	}
	// Si el correo no existe
	Users.push({name: name, numero: numero, email: email, password: password});
	// Convertimos los datos en cadenas para almacenarlos
	localStorage.setItem('users', JSON.stringify(Users));
	// Mostraremos que el usuario se registro con exito
	Swal.fire({
		title: "Bienvenido",
		text: "El registro fue exitoso",
		icon: "success"
	});
	// Esperar 3 segundos antes de redirigir al usuario
	setTimeout(function() {
		// Que nos redirija al login después de 3 segundos
		window.location.href = "login.html";
	}, 3000); // 3000 milisegundos = 3 segundos
})