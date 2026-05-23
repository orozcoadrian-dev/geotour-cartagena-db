-- rel: Un administrador puede tener asignadas muchas solicitudes de registro para procesar. Una solicitud puede estar asignada a un administrador o estar aún sin asignar si acaba de ingresar al sistema. Relación uno a muchos, con la FK siendo opcional.

ALTER TABLE solicitudes_registros
ADD CONSTRAINT fk_administrador_solicitudes_registros
FOREIGN KEY (id_administrador) REFERENCES administrador(id_administrador);