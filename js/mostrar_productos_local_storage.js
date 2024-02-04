const productos = JSON.parse(localStorage.getItem('productos'))

function productos_categoria(productos,categoria){
	let producto_html=``
	for(i=0;i<productos.length;i++){
		if(productos[i].categoria==categoria){
			precioFormateado = productos[i].precio.toLocaleString('es-ES', {
				// style: 'currency',
				// currency: 'COP',
				minimumFractionDigits: 0,
				maximumFractionDigits: 0,
			});
			imagen_url=productos[i].imagen || "img/Bateria1.jpg"
			producto_html += `
				<div class="item">
					<img src="${imagen_url}" alt="" class="img-item">
					<span class="titulo-item">${productos[i].nombre}</span>
					<span class="precio-item">$ ${precioFormateado}</span>
					<button class="boton-item">Agregar al Carrito <i class="fa-solid fa-cart-shopping" style="color: black"></i></button>
				</div>
			`
		}
	}
	// Con esto vuelve a funcionar el carrito de compras, por alguna razon se borran el evento de los botones "agregarAlCarritoClicked" al traer los productos de la api
	let botonesAgregarAlCarrito = document.getElementsByClassName('boton-item');
    for(let i=0; i<botonesAgregarAlCarrito.length;i++){
        let button = botonesAgregarAlCarrito[i];
        button.addEventListener('click', agregarAlCarritoClicked);
    }
	return producto_html;
}




const categoria_PX_html=productos_categoria(productos,"PX");
const categoria_PX = document.getElementById("PX").querySelector("div")
categoria_PX.innerHTML+=categoria_PX_html

const categoria_BS_html=productos_categoria(productos,"BS");
const categoria_BS = document.getElementById("BS").querySelector("div")
categoria_BS.innerHTML+=categoria_BS_html

const categoria_CX_html=productos_categoria(productos,"CX");
console.log(categoria_CX_html);
const categoria_CX = document.getElementById("CX").querySelector("div")
categoria_CX.innerHTML+=categoria_CX_html

const categoria_IS_html=productos_categoria(productos,"IS");
const categoria_IS = document.getElementById("IS").querySelector("div")
categoria_IS.innerHTML+=categoria_IS_html

const categoria_KS_html=productos_categoria(productos,"KS");
const categoria_KS = document.getElementById("KS").querySelector("div")
categoria_KS.innerHTML+=categoria_KS_html

const categoria_HR_html=productos_categoria(productos,"HR");
const categoria_HR = document.getElementById("HR").querySelector("div")
categoria_HR.innerHTML+=categoria_HR_html

const categoria_IL_html=productos_categoria(productos,"IL");
const categoria_IL = document.getElementById("IL").querySelector("div")
categoria_IL.innerHTML+=categoria_IL_html