-- rel: Una entidad turística puede aparecer como ítem en muchos itinerarios distintos. Cada ítem de itinerario referencia obligatoriamente a una entidad turística. Relación uno a muchos.

ALTER TABLE items_itinerario
ADD CONSTRAINT fk_item_itinerario_entidad
FOREIGN KEY (id_entidad) REFERENCES entidades_turisticas(id_entidad);