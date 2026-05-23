-- rel: Un administrador puede generar muchos registros de actividad a través de sus acciones en CU-15, CU-16, CU-18 y CU-19. Cada log de actividad referencia al actor que lo generó. Relación uno a muchos.

ALTER TABLE logs_actividades
ADD CONSTRAINT fk_administrador_logs_actividades
FOREIGN KEY (id_actor) REFERENCES administrador(id_administrador);