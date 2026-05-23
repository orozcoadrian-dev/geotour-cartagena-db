-- rel: Una solicitud de registro busca dar origen a una entidad turística que aún no existe en el sistema. Una vez aprobada, la solicitud se vincula a la entidad creada. Relación uno a uno opcional: la solicitud existe antes que la entidad, y la entidad solo existe si la solicitud fue aprobada y procesada por el moderador en CU-14.

ALTER TABLE entidades_turisticas
ADD CONSTRAINT fk_entidad_solicitud
FOREIGN KEY (id_solicitud_registro) REFERENCES solicitudes_registros(id_solicitud);