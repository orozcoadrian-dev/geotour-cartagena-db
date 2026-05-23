-- rel: Un turista puede tener como máximo un perfil de preferencias registrado. Un perfil de preferencias pertenece obligatoriamente a un turista. Relación uno a uno, donde el perfil de preferencias es opcional hasta que el turista ejecuta CU-02 por primera vez.

ALTER TABLE preferencias_turistas
ADD CONSTRAINT fk_turista_preferencias_turistas
FOREIGN KEY (id_turista) REFERENCES turistas(id_turista);