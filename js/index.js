// Verificar si los datos que se logueo, concuerda con los datos que están almacenados en la base de datos local

const user = JSON.parse(localStorage.getItem('login_success')) || false;

if(!user){
	window.location.href="login.html";
}

const logout = document.querySelector('#salir');

//Inicializar un evento "click que me permita cerrr sessión"
logout.addEventListener("click", ()=>{
	alert("Vuelva pronto, que estes bien");
	// Para que la sesión no quede activo, la removemos
	localStorage.removeItem('login_success')
	window.location.href = 'login.html'
})