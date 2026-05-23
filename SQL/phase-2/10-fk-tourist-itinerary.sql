-- rel: un turista puede tener muchos itinerarios a lo largo del tiempo, tanto generados por el sistema como comprados a operadores. Un itinerario puede estar asociado a un turista o no estarlo si el operador lo creó como plantilla sin cliente asignado aún. Relación uno a muchos, con la FK en Itinerarios siendo opcional.

ALTER TABLE itinerarios
ADD CONSTRAINT fk_turista_itinerario
FOREIGN KEY (id_turista) REFERENCES turistas(id_turista);