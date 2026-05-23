CREATE TABLE servicios_operadores
(
id_servicio INT PRIMARY KEY AUTO_INCREMENT,
id_operador INT NOT NULL,
nombre_servicio VARCHAR(80) NOT NULL,
categoria VARCHAR(50) NULL,
descripcion VARCHAR(120) NOT NULL,
capacidad_maxima INT NULL,
precio DOUBLE NOT NULL,
hora_inicio TIME NOT NULL,
hora_fin TIME NOT NULL,
estado VARCHAR(30),
fecha_publicacion DATETIME NOT NULL,
fecha_modificacion DATETIME NULL
);