CREATE TABLE solicitudes_registros
(
id_solicitud INT PRIMARY KEY AUTO_INCREMENT,
nombre_establecimiento VARCHAR(150) NOT NULL,
categoria VARCHAR(40) NULL,
direccion VARCHAR(100) NOT NULL,
telefono VARCHAR(20) NOT NULL,
email VARCHAR(100) NOT NULL,
url_sitio_web VARCHAR(2083) NULL,
descripcion_establecimiento TEXT NOT NULL,
estado VARCHAR(30) NOT NULL,
fecha_solicitud DATETIME NOT NULL,
horario_apertura TIME NOT NULL,
horario_cierre TIME NOT NULL,
numero_radicado VARCHAR(50) UNIQUE NOT NULL
);