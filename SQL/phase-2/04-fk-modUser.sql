-- rel: Un usuario puede ser un moderador. Un moderador pertenece a exactamente un usuario. Relación uno a uno obligatoria del lado de Moderadores, opcional del lado de Usuarios.

ALTER TABLE administrador
ADD CONSTRAINT fk_usuario_administrador
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario);