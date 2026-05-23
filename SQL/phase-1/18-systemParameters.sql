CREATE TABLE parametros_sistema
(
id_parametro INT  PRIMARY KEY AUTO_INCREMENT,
clave VARCHAR(100) NOT NULL,
valor_actual VARCHAR(255) NULL,
valor_predeterminado VARCHAR(255) NULL,
rango_min VARCHAR(50) NULL,
rango_max VARCHAR(50) NOT NULL,
categoria VARCHAR(50) NOT NULL,
descripcion TEXT NULL,
fecha_modificacion DATETIME NULL
);