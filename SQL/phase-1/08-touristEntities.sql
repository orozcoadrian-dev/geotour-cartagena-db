CREATE TABLE entidades_turisticas
(
id_entidad INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
categoria VARCHAR(50) NULL,
direccion_completa VARCHAR(100) NOT NULL,
precio_orientativo DOUBLE NULL,
estado VARCHAR(20) NOT NULL,
url_sitio_web VARCHAR(2083) NULL,
fuente_registro VARCHAR(50) NOT NULL,
fecha_ultima_actualizacion DATETIME NULL,
valoracion_promedio DOUBLE NULL,
id_solicitud_registro INT NULL
);