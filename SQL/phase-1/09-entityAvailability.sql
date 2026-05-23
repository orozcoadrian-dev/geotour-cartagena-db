CREATE TABLE disponibilidades_entidades
(
id_disponibilidad INT PRIMARY KEY AUTO_INCREMENT,
fecha_registro_disponibilidad DATETIME NOT NULL,
id_entidad INT NOT NULL,
cupo_disponible INT NULL,
fuente VARCHAR(50) NOT NULL,
horario_apertura TIME NOT NULL,
horario_cierre TIME NOT NULL
);