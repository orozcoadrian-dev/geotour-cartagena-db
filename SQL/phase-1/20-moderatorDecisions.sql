CREATE TABLE decisiones_moderaciones
(
id_decision INT PRIMARY KEY AUTO_INCREMENT,
id_resena INT NOT NULL,
id_moderador INT NULL,
id_administrador INT NULL,
accion VARCHAR(30) NOT NULL,
motivo VARCHAR(80) NULL,
fecha_decision DATETIME NOT NULL,
notificacion_enviada BOOLEAN NOT NULL
);