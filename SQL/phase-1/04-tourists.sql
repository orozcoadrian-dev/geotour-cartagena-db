CREATE TABLE turistas
(
id_turista INT PRIMARY KEY AUTO_INCREMENT,
primer_nombre VARCHAR(50) NOT NULL,
segundo_nombre VARCHAR(50) NULL,
primer_apellido VARCHAR(50) NOT NULL,
segundo_apellido VARCHAR(50) NULL,
pais_origen VARCHAR(50) NULL,
ciudad_origen VARCHAR(60) NULL,
fecha_llegada DATE NOT NULL,
fecha_salida DATE NULL,
email VARCHAR(90) NULL,
fecha_nacimiento DATE NULL,
telefono VARCHAR(20) NULL,
foto_perfil_url VARCHAR(2083) NULL,
numero_identificacion VARCHAR(20) NOT NULL,
tipo_identificacion VARCHAR(20) NOT NULL,
id_usuario INT NOT NULL
);