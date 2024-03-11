async function obtener_productos (productos_json,categoria) {
	let productos_categoria=[];
	for(i=0;i<productos_json.length;i++){
		if(productos_json[i].categoria.sku==categoria){
			productos_categoria.push(productos_json[i]);
		}
	}
	// console.log(productos_categoria)
	return productos_categoria
}


function mostrar_productos(productos,id_categoria,ruta) {
	const Productos = JSON.parse(localStorage.getItem('productos')) || [];

	const categoria=document.getElementById(id_categoria).querySelector("div")
	// console.log(categoria);
	let div_productos=``
	let precioFormateado;
	for(let i=0;i<productos.length;i++){
			precioFormateado = productos[i].precio.toLocaleString('es-ES', {
				// style: 'currency',
				// currency: 'COP',
				minimumFractionDigits: 0,
				maximumFractionDigits: 0,
			});
			div_productos+=`
			<div class="item">
				<img src="${ruta}${productos[i].imagen}" alt="" class="img-item">
				<span class="titulo-item">${productos[i].nombre}</span>
				<!--Un elemento de texto con la clase "precio-item" que muestra el precio "$15.000".-->
				<span class="precio-item">$ ${precioFormateado}</span>
				<!-- Un botón con la clase "boton-item" que muestra el texto "Agregar al Carrito".-->
				<button class="boton-item" onclick="alerta()">Agregar al Carrito <i class="fa-solid fa-cart-shopping" style="color: black"></i></button>
			</div>
			`
	}
	categoria.innerHTML+=div_productos
	// Con esto vuelve a funcionar el carrito de compras, por alguna razon se borran el evento de los botones "agregarAlCarritoClicked" al traer los productos de la api
	let botonesAgregarAlCarrito = document.getElementsByClassName('boton-item');
    for(let i=0; i<botonesAgregarAlCarrito.length;i++){
        let button = botonesAgregarAlCarrito[i];
        button.addEventListener('click', agregarAlCarritoClicked);
    }
}
function alerta(){
	Swal.fire({
		icon: "success",
		title: "El producto ha sido agregado al carrito",
		showConfirmButton: false,
		timer: 1500
	});
}
async function main(){

	let uri_productos="https://33064686-b113-4a3c-8957-be5683d5cdc3.mock.pstmn.io/obtenerProductos";
	//Enviar petición de tipo Get
	const productos_resp = await fetch(uri_productos)
	// console.log(productos_resp)
	const productos_json = await productos_resp.json()
	const productos_categoria_1 = await obtener_productos(productos_json,"PX"); // Paneles
	const productos_categoria_2 = await obtener_productos(productos_json,"BS"); // Baterias
	const productos_categoria_3 = await obtener_productos(productos_json,"CX"); // Controladores
	const productos_categoria_4 = await obtener_productos(productos_json,"IS"); // Inversores
	const productos_categoria_5 = await obtener_productos(productos_json,"KS"); // Kit Solar
	const productos_categoria_6 = await obtener_productos(productos_json,"HR"); // Hogar
	const productos_categoria_7 = await obtener_productos(productos_json,"IL"); // Industrial}
	mostrar_productos(productos_categoria_1,"PX","img/");
	mostrar_productos(productos_categoria_2,"BS","img/");
	mostrar_productos(productos_categoria_3,"CX","img/");
	mostrar_productos(productos_categoria_4,"IS","img/");
	mostrar_productos(productos_categoria_5,"KS","img/");
	mostrar_productos(productos_categoria_6,"HR","img/");
	mostrar_productos(productos_categoria_7,"IL","img/");

	// Mostrar productos guardado en la base de datos
	// fetch para obtener productos
	/*
	url_productos = "https://solar-code.up.railway.app/api/v1/producto/obtenerProductos"
	//Enviar petición de tipo Get
	const productos_db_resp = await fetch(url_productos)
	// console.log(productos_resp)
	const productos_db_json = await productos_db_resp.json()
	console.log(productos_db_json);

	const productos_categoria_db_1 = await obtener_productos(productos_db_json,"PX"); // Paneles
	const productos_categoria_db_2 = await obtener_productos(productos_db_json,"BS"); // Baterias
	const productos_categoria_db_3 = await obtener_productos(productos_db_json,"CX"); // Controladores
	const productos_categoria_db_4 = await obtener_productos(productos_db_json,"IS"); // Inversores
	const productos_categoria_db_5 = await obtener_productos(productos_db_json,"KS"); // Kit Solar
	const productos_categoria_db_6 = await obtener_productos(productos_db_json,"HR"); // Hogar
	const productos_categoria_db_7 = await obtener_productos(productos_db_json,"IL"); // Industrial}

	categorias = ["PX","BS","CX","IS","KS","HR","IL"];
	mostrar_productos(productos_categoria_db_1,"PX","");
	mostrar_productos(productos_categoria_db_2,"BS","");
	mostrar_productos(productos_categoria_db_3,"CX","");
	mostrar_productos(productos_categoria_db_4,"IS","");
	mostrar_productos(productos_categoria_db_5,"KS","");
	mostrar_productos(productos_categoria_db_6,"HR","");
	mostrar_productos(productos_categoria_db_7,"IL","");
	*/

}
main();