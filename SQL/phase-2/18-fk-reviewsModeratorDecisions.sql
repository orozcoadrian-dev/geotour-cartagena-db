-- rel: Una reseña puede tener muchas decisiones de moderación a lo largo del tiempo, porque el historial completo debe conservarse según el requisito especial de CU-20. Cada decisión de moderación pertenece obligatoriamente a una reseña. Relación uno a muchos.

ALTER TABLE decisiones_moderaciones
ADD CONSTRAINT fk_resena_decision_moderacion
FOREIGN KEY (id_resena) REFERENCES resenas(id_resena);