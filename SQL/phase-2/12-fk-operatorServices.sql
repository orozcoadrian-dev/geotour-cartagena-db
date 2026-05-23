-- rel: Un operador turístico puede ofrecer uno o muchos servicios puntuales. Cada servicio pertenece obligatoriamente a un operador turístico. Relación uno a muchos.

ALTER TABLE servicios_operadores
ADD CONSTRAINT fk_operador_servicios
FOREIGN KEY (id_operador) REFERENCES operadores_turisticos(id_operador);