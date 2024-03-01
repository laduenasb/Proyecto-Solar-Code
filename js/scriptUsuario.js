function guardar() {
  const input = document.getElementById('imgProduct');
  const file = input.files[0];

  if (!file) {
    return console.error('No se ha seleccionado ningún archivo.');
  }

  const reader = new FileReader();

  reader.onload = async function (e) {
    // Guardar la representación base64 de la imagen en el objeto usuarioAdm
    const usuarioAdm = {
      nombre: document.getElementById('nameProduct').value,
      imagen: e.target.result,  // Aquí se guarda la imagen en formato base64
      categoria: document.getElementById('lang').value,
      precio: parseFloat(document.getElementById('precioProduct').value),
      descripcion: document.getElementById('descripProduct').value,
      ficha_tecnica: document.getElementById('urlProduct').value,
      sku: document.getElementById('skuProduct').value
    };

    const Productos = JSON.parse(localStorage.getItem('productos')) || [];
    // console.log(Productos);

    const isProductoGuardado = Productos.find(saveProducto => saveProducto.sku == usuarioAdm.sku);

    // console.log(isProductoGuardado);

    if (isProductoGuardado) {
      Swal.fire({
        icon: "error",
        title: "El producto ya existe",
        showConfirmButton: false,
        timer: 1500
      });
      return "";
      // return alert("El producto ya existe");
    }

    Productos.push(usuarioAdm);
    // console.log(Productos);

    localStorage.setItem('productos', JSON.stringify(Productos));
    // alert("Producto guardado exitosamente");
    Swal.fire({
      icon: "success",
      title: "Producto guardado exitosamente",
      showConfirmButton: false,
      timer: 1500
    });

    // fetch para obtener un categoria
    url_categoria = "https://solar-code.up.railway.app/api/v1/categoria/encontrarCategoriaPorSku"+`/${usuarioAdm.categoria}`
    //Enviar petición de tipo Get
	  const categoria_resp = await fetch(url_categoria)
	  // console.log(productos_resp)
	  const categoria_json = await categoria_resp.json()
    console.log(categoria_json);

    // fetch guardar producto

    const url_guardarProducto = "https://solar-code.up.railway.app/api/v1/producto/guardarProducto";

    delete usuarioAdm.categoria;
    // delete usuarioAdm.url;
    usuarioAdm.categoria_id = categoria_json.categoria_id;
    console.log(usuarioAdm);

    producto_test = {
      "categoria_id": usuarioAdm.categoria_id,
      "nombre": usuarioAdm.nombre,
      "precio": usuarioAdm.precio,
      "imagen": usuarioAdm.imagen,
      "marca": "",
      "descripcion": usuarioAdm.descripcion,
      "ficha_tecnica": usuarioAdm.ficha_tecnica,
      "sku": usuarioAdm.sku,
      "stock": 10
    }

    // const response = await fetch(url_guardarProducto, {
    //   method: 'POST', // POST, PUT, DELETE
    //   body: JSON.stringify(producto_test),
    //   headers: {
    //       'Content-Type': 'application/json'
    //   }
    // })
    // const data = await response.json()
    // console.log("respuesta");
    // console.log(response)

//    Opciones de configuración para la solicitud POST
    const requestOptions = {
      method: 'POST',
      headers: {
          'Content-Type': 'application/json'
      },
      // body: JSON.stringify(usuarioAdm)
      body: JSON.stringify(producto_test)
    };
    
    // Realizar la solicitud POST usando fetch
    const response_guardar = await fetch(url_guardarProducto, requestOptions)
    .then(response => {
        if (!response.ok) {
            throw new Error('Error al guardar el producto');
        }
        return response.json();
    })
    .then(data => {
        // Manejar la respuesta del servidor si es necesario
        console.log('Producto guardado con éxito:', data);
    })
    .catch(error => {
        console.error('Error:', error);
    });
    // fetch guardar producto
  };

  reader.readAsDataURL(file); // Convierte la imagen a base64
}
