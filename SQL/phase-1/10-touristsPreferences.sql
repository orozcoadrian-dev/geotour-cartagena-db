CREATE TABLE preferencias_turistas
(
id_preferencia INT PRIMARY KEY AUTO_INCREMENT,
id_turista INT NOT NULL,
categoria_interes VARCHAR(50) NOT NULL,
presupuesto DOUBLE NULL,
num_estadias INT NULL,
zona_referencias VARCHAR(100) NULL,
fecha_creacion DATETIME NOT NULL,
fecha_modificacion DATETIME NULL,
ritmo_visita VARCHAR(30) NULL
);