-- rel: Un administrador puede modificar muchos parámetros del sistema. Cada parámetro registra cuál fue el último administrador que lo modificó. Relación uno a muchos.

ALTER TABLE parametros_sistema
ADD CONSTRAINT fk_administrador_parametros_sistema
FOREIGN KEY (id_administrador) REFERENCES administrador(id_administrador);