-- rel: Las acciones relevantes del turista, como confirmación de itinerarios o publicación de reseñas, pueden quedar registradas en el log para las estadísticas de CU-17. Relación uno a muchos.

ALTER TABLE logs_actividades
ADD CONSTRAINT fk_turista_log_actividades
FOREIGN KEY (id_actor) REFERENCES turistas(id_turista);