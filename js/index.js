// Verificar si los datos que se logueo, concuerda con los datos que están almacenados en la base de datos local

const user = JSON.parse(localStorage.getItem('login_success')) || false;

// if(!user){
// 	window.location.href="login.html";
// }

const logout = document.querySelector('#salir');

//Inicializar un evento "click que me permita cerrar sessión"
logout.addEventListener("click", ()=>{
	Swal.fire({
		title: "Sesión terminada",
		icon: "success"
	});

	// Para que la sesión no quede activo, la removemos
	localStorage.removeItem('login_success')
	// Esperar 3 segundos antes de redirigir al usuario
	setTimeout(function() {
		// Que nos redirija al login después de 2 segundos
		window.location.href = "login.html";
	}, 2000); // 2000 milisegundos = 2 segundos
})