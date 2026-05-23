CREATE TABLE itinerarios
(
id_itinerario INT PRIMARY KEY AUTO_INCREMENT,
id_turista INT NOT NULL,
nombre VARCHAR(100) NOT NULL,
descripcion TEXT NULL,
precio DOUBLE NULL,
fecha_creacion DATETIME NOT NULL,
fecha_inicio DATETIME NULL,
fecha_fin DATETIME NULL,
estado VARCHAR(25) NOT NULL
);