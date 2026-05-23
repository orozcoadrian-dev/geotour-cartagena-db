CREATE TABLE turista_serviciooperador
(
id_servicio_turista INT PRIMARY KEY AUTO_INCREMENT,
id_turista INT NOT NULL,
id_servicio INT NOT NULL,
estado VARCHAR(30) NOT NULL,
fecha_seleccion DATETIME NOT NULL,
fecha_visita_programada DATETIME NOT NULL
);