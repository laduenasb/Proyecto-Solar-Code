function guardar() {
  const input = document.getElementById('imgProduct');
  const file = input.files[0];

  if (!file) {
    return console.error('No se ha seleccionado ningún archivo.');
  }

  const reader = new FileReader();

  reader.onload = function (e) {
    // Guardar la representación base64 de la imagen en el objeto usuarioAdm
    const usuarioAdm = {
      nombre: document.getElementById('nameProduct').value,
      imagen: e.target.result,  // Aquí se guarda la imagen en formato base64
      categoria: document.getElementById('lang').value,
      precio: parseFloat(document.getElementById('precioProduct').value),
      descripcion: document.getElementById('descripProduct').value,
      url: document.getElementById('urlProduct').value,
      sku: document.getElementById('skuProduct').value
    };

    console.log(usuarioAdm);

    const Productos = JSON.parse(localStorage.getItem('productos')) || [];
    console.log(Productos);

    const isProductoGuardado = Productos.find(saveProducto => saveProducto.sku == usuarioAdm.sku);

    console.log(isProductoGuardado);

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
    console.log(Productos);

    localStorage.setItem('productos', JSON.stringify(Productos));
    // alert("Producto guardado exitosamente");
    Swal.fire({
      icon: "success",
      title: "Producto guardado exitosamente",
      showConfirmButton: false,
      timer: 1500
    });
  };

  reader.readAsDataURL(file); // Convierte la imagen a base64
}
