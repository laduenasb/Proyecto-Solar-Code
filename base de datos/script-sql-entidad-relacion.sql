CREATE TABLE Categorias (
    ID_Categoria INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Categoria VARCHAR(100) NOT NULL,
    Descripcion VARCHAR(300)
);
CREATE TABLE Productos (
    ID_Producto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Marca VARCHAR(100),
    Descripcion TEXT,
    Imagen VARCHAR(255),
    Ficha_Tecnica TEXT,
    SKU VARCHAR(50) NOT NULL,
    Stock INT NOT NULL,
    FK_ID_Categoria INT,
    FOREIGN KEY (FK_ID_Categoria) REFERENCES Categorias(ID_Categoria)
);

CREATE TABLE Clientes (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Telefono VARCHAR(20),
    Direccion VARCHAR(255),
    Correo VARCHAR(100)
);

CREATE TABLE Compras (
    ID_Compra INT AUTO_INCREMENT PRIMARY KEY,
    FK_ID_Cliente INT,
    FK_ID_Producto INT,
    Fecha_Compra DATE NOT NULL,
    Precio_Producto DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (FK_ID_Cliente) REFERENCES Clientes(ID_Cliente),
    FOREIGN KEY (FK_ID_Producto) REFERENCES Productos(ID_Producto)
);