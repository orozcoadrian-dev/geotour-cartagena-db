-- rel: Un moderador puede generar muchos registros de actividad a través de sus decisiones de moderación en CU-20 y CU-21. Relación uno a muchos.

ALTER TABLE logs_actividades
ADD CONSTRAINT fk_moderador_log_actividades
FOREIGN KEY (id_actor) REFERENCES moderadores(id_moderador);