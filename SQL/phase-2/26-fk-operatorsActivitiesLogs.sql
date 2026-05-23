-- rel: Las acciones del operador como publicación de servicios, creación de itinerarios o desactivación de perfil pueden quedar registradas. Relación uno a muchos.

ALTER TABLE logs_actividades
ADD CONSTRAINT fk_operador_log_actividades
FOREIGN KEY (id_actor) REFERENCES operadores_turisticos(id_operador);