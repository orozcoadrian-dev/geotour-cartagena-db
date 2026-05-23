CREATE TABLE administrador
(
id_administrador INT PRIMARY KEY AUTO_INCREMENT,
primer_nombre VARCHAR(50) NOT NULL,
segundo_nombre VARCHAR(50) NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NULL,
pais_origen VARCHAR(60) NULL,
email VARCHAR(90) NOT NULL,
telefono_contacto VARCHAR(20) NOT NULL,
id_usuario INT NOT NULL,
numero_identificacion VARCHAR(20) NOT NULL,
tipo_identificacion VARCHAR(20) NOT NULL,
fecha_asignacion DATETIME NOT NULL
);