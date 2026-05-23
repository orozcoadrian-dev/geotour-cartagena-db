-- Rel: Un usuario puede ser un turista. Un turista pertenece a exactamente un usuario. Relación uno a uno obligatoria del lado de Turistas, opcional del lado de Usuarios porque no todo usuario es turista.

ALTER TABLE turistas
ADD CONSTRAINT fk_usuario_turista
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario);