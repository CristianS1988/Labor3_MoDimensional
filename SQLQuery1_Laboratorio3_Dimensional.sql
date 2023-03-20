Create database Laboratorio3_modelodimensional

use Laboratorio3_modelodimensional

CREATE TABLE Tiendas (
    id_tienda INT PRIMARY KEY,
    ciudad VARCHAR(50),
    estado VARCHAR(50),
    pais VARCHAR(50)
);


CREATE TABLE Productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(50),
    marca VARCHAR(50),
    categoria VARCHAR(50)
);

CREATE TABLE Promociones (
    id_promocion INT PRIMARY KEY,
    descripcion VARCHAR(100),
    fecha_inicio DATE,
    fecha_fin DATE
);

CREATE TABLE Cajeros (
    id_cajero INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

CREATE TABLE MetodosPago (
    id_metodo_pago INT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE Ventas (
    id_venta INT PRIMARY KEY,
    id_tienda INT,
    id_producto INT,
    id_promocion INT,
    id_cajero INT,
    id_metodo_pago INT,
    fecha DATE,
    cantidad INT,
    precio_regular FLOAT,
    descuento FLOAT,
    precio_pagado FLOAT,
    descuento_extendido FLOAT,
    venta_extendida FLOAT,
    FOREIGN KEY (id_tienda) REFERENCES Tiendas(id_tienda),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto),
    FOREIGN KEY (id_promocion) REFERENCES Promociones(id_promocion),
    FOREIGN KEY (id_cajero) REFERENCES Cajeros(id_cajero),
    FOREIGN KEY (id_metodo_pago) REFERENCES MetodosPago(id_metodo_pago)
);