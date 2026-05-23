-- rel: Un moderador puede tomar muchas decisiones de moderación. Cada decisión de moderación es ejecutada por un moderador o por un administrador actuando como moderador. Relación uno a muchos.

ALTER TABLE decisiones_moderaciones
ADD CONSTRAINT fk_moderador_decision_moderacion
FOREIGN KEY (id_moderador) REFERENCES moderadores(id_moderador);