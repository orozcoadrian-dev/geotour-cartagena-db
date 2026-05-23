CREATE TABLE operadores_turisticos
(
id_operador INT PRIMARY KEY AUTO_INCREMENT,
nombre_comercial VARCHAR(50) NOT NULL,
descripcion_negocio TEXT NULL,
telefono_contacto VARCHAR(20) NOT NULL,
direccion_referencia VARCHAR(120) NULL,
logo_url VARCHAR(2083) NULL,
imagen_portada_url VARCHAR(2083) NULL,
categoria_principal VARCHAR(50) NULL,
sitio_web VARCHAR(2083) NULL,
fecha_vinculacion DATE NOT NULL,
id_usuario INT NOT NULL
);