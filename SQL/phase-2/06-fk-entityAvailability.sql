-- rel: Una entidad turística puede tener registrados muchos bloques de disponibilidad a lo largo del tiempo. Cada bloque de disponibilidad pertenece obligatoriamente a una entidad turística. Relación uno a muchos.

ALTER TABLE disponibilidades_entidades
ADD CONSTRAINT fk_entidades_disponibilidades
FOREIGN KEY (id_entidad) REFERENCES entidades_turisticas(id_entidad);