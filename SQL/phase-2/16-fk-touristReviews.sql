-- rel: Un turista puede publicar muchas reseñas sobre distintas entidades turísticas. Cada reseña pertenece obligatoriamente a un turista. Relación uno a muchos.

ALTER TABLE resenas
ADD CONSTRAINT fk_turista_resena
FOREIGN KEY (id_turista) REFERENCES turistas(id_turista);