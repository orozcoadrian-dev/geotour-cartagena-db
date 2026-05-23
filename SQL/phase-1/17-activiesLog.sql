CREATE TABLE logs_actividades
(
id_log INT PRIMARY KEY AUTO_INCREMENT,
id_actor INT NOT NULL,
tipo_evento VARCHAR(80) NOT NULL,
descripcion TEXT NULL,
modulo VARCHAR(50) NOT NULL,
fecha DATETIME NOT NULL
);