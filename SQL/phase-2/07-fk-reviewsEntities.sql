-- rel: Una entidad turística puede tener muchas reseñas publicadas por distintos turistas. Cada reseña está asociada obligatoriamente a una entidad turística. Relación uno a muchos.

ALTER TABLE resenas
ADD CONSTRAINT fk_entidades_resenas
FOREIGN KEY (id_entidad) REFERENCES entidades_turisticas(id_entidad);