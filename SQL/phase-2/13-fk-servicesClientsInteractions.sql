-- rel: Un servicio puede recibir muchas interacciones de distintos turistas a lo largo del tiempo. Cada interacción está asociada obligatoriamente a un servicio. Relación uno a muchos.

ALTER TABLE interacciones_clientes
ADD CONSTRAINT fk_servicios_operadores_interacciones
FOREIGN KEY (id_servicio) REFERENCES servicios_operadores(id_servicio);