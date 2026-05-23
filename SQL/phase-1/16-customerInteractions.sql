CREATE TABLE interacciones_clientes
(
id_interaccion INT PRIMARY KEY AUTO_INCREMENT,
id_turista INT NOT NULL,
id_servicio INT NULL,
id_entidad INT NULL,
tipo_interaccion VARCHAR(50) NOT NULL,
fecha_interaccion DATETIME NOT NULL
);