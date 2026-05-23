-- rel: Un turista puede generar muchas interacciones con distintos servicios a lo largo del tiempo. Cada interacción pertenece obligatoriamente a un turista. Relación uno a muchos

ALTER TABLE interacciones_clientes
ADD CONSTRAINT fk_turista_interaccion_cliente
FOREIGN KEY (id_turista) REFERENCES turistas(id_turista);