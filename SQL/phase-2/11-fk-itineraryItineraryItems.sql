-- rel: Un itinerario está compuesto por uno o muchos ítems. Cada ítem pertenece obligatoriamente a un itinerario. Relación uno a muchos. Si el itinerario se elimina, sus ítems se eliminan en cascada.

ALTER TABLE items_itinerario
ADD CONSTRAINT fk_itinerario_items_itinerario
FOREIGN KEY (id_itinerario) REFERENCES itinerarios(id_itinerario);