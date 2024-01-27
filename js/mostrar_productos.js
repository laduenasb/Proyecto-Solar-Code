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


function mostrar_productos(productos,id_categoria) {
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
				<img src="img/${productos[i].imagen}" alt="" class="img-item">
				<span class="titulo-item">${productos[i].nombre}</span>
				<!--Un elemento de texto con la clase "precio-item" que muestra el precio "$15.000".-->
				<span class="precio-item">$ ${precioFormateado}</span>
				<!-- Un botón con la clase "boton-item" que muestra el texto "Agregar al Carrito".-->
				<button class="boton-item">Agregar al Carrito <i class="fa-solid fa-cart-shopping" style="color: black"></i></button>
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
async function main(){

	let uri_productos="https://33064686-b113-4a3c-8957-be5683d5cdc3.mock.pstmn.io/obtenerProductos";
	// Enviar petición de tipo Get
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
	mostrar_productos(productos_categoria_1,"PX");
	mostrar_productos(productos_categoria_2,"BS");
	mostrar_productos(productos_categoria_3,"CX");
	mostrar_productos(productos_categoria_4,"IS");
	mostrar_productos(productos_categoria_5,"KS");
	mostrar_productos(productos_categoria_6,"HR");
	mostrar_productos(productos_categoria_7,"IL");
	
}
main();