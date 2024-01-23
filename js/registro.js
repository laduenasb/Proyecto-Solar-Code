// Inicializar una variable para que almacene toda la info del formulario
const signupForm = document.querySelector("#registro-formulario");
// Agregar un evento para que me evite que la página se recargue sin antes de envíar el formulario

signupForm.addEventListener("submit",(e)=>{
	e.preventDefault();
	// Inicializar una variables para que me capture los datos ingresados en los campos de entrada
	const name = document.querySelector("#nombre").value;
	const email = document.querySelector("#email").value;
	const password=document.querySelector("#password").value;

	// Inicializar una variable que reciba los datos que serán guardados en el JSON	 (array de datos)

	const Users = JSON.parse(localStorage.getItem('users')) || [];
	
	// Verificar si el correo electrónico que se trata de ingresar se encuentra registrado o no
	const isUserRegistered = Users.find(user => user.email === email);
	// Si el correo ya existe, nos mostrara un mensaje de alerta diciendo que ya se encuentra registrado el correo
	if(isUserRegistered){
		return alert("El correo que ingresas, ya se encuentra registrado")
	}
	// Si el correo no existe
	Users.push({name: name, email: email, password: password});
	// Convertimos los datos en cadenas para almacenarlos
	localStorage.setItem('users', JSON.stringify(Users));
	// Mostraremos que el usuario se registro con exito
	alert('Registro fue exitoso');
	// Que nos redireccione al login
	window.location.href="login.html";
})