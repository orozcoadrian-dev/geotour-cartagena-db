-- rel: Un servicio puntual del operador puede ser incluido como ítem dentro de un itinerario, ya sea armado por el propio operador o generado por el sistema. Un ítem de itinerario puede referenciar opcionalmente a un servicio del operador, porque también puede apuntar directamente a una entidad turística sin pasar por un servicio. Relación uno a muchos, con la FK en ItemsItinerarios siendo opcional.

ALTER TABLE items_itinerario
ADD CONSTRAINT fk_servicio_operador_item_itinerario
FOREIGN KEY (id_servicio) REFERENCES servicios_operadores(id_servicio);