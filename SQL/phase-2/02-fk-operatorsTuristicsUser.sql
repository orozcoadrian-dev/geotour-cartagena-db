-- Rel: Un usuario puede ser un operador turístico. Un operador turístico pertenece a exactamente un usuario. Relación uno a uno obligatoria del lado de OperadoresTuristicos, opcional del lado de Usuarios.

ALTER TABLE operadores_turisticos
ADD CONSTRAINT fk_usuario_operadoresturisticos
FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario);