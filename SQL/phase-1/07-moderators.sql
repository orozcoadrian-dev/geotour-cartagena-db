CREATE TABLE moderadores
(
id_moderador INT PRIMARY KEY AUTO_INCREMENT,
primer_nombre VARCHAR(50) NOT NULL,
segundo_nombre VARCHAR(50) NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NULL,
total_decisiones_tomadas INT NULL,
fecha_asignacion_rol DATETIME NOT NULL,
activo BOOLEAN NOT NULL,
id_usuario INT NOT NULL,
numero_identificacion VARCHAR(20) NOT NULL,
tipo_identificacion VARCHAR(20) NOT NULL,
email VARCHAR(90) NULL,
telefono VARCHAR(20) NULL
);