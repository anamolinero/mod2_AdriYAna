 CREATE SCHEMA `tienda_zapatillas`;
 USE `tienda_zapatillas`;
 CREATE TABLE zapatillas (
 id_zapatilla int primary key auto_increment not null,
 modelo varchar(45) not null,
 color varchar(45) not null
 );
 
 CREATE TABLE clientes (
 id_cliente int primary key auto_increment  not null,
 nombre varchar(45) not null,
 numero_telefono int not null,
 email varchar(45) not null,
 direccion varchar(45) not null,
 ciudad varchar(45),
 provincia varchar(45) not null,
 pais varchar(45) not null,
 codigo_postal varchar(45)
 );
 
 CREATE TABLE empleados (
 id_empleados int primary key auto_increment  not null,
 nombre varchar(45) not null,
 tienda varchar(45) not null,
 salario int,
 fecha_incorporacion date not null
 );
 
 CREATE TABLE facturas (
 id_factura int primary key auto_increment  not null,
 num_factura varchar(45) not null,
 fecha date not null,
 id_zapatilla INT NOT NULL, -- Columna para la clave foránea
 id_empleado INT NOT NULL,  -- Columna para la clave foránea
 id_cliente INT NOT NULL,   -- Columna para la clave foránea
 constraint fk_zapatilla_factura foreign key (id_zapatilla) references zapatillas(id_zapatilla),
 constraint fk_empleado_factura foreign key (id_empleado) references empleados(id_empleados),
 constraint fk_cliente_factura foreign key (id_cliente) references clientes(id_cliente)
 );