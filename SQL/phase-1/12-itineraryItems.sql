CREATE TABLE items_itinerario
(
id_item INT PRIMARY KEY AUTO_INCREMENT,
id_itinerario INT NOT NULL,
id_entidad INT NULL,
dia_numero INT NOT NULL,
duracion_estimada_mnts INT NULL,
orden_en_dia INT NULL,
id_servicio INT NULL
);