-- rel: Un administrador puede tomar decisiones de moderación directamente, ya que CU-20 lo lista como actor junto al moderador. Cada decisión registra quién la ejecutó, sea moderador o administrador. Relación uno a muchos, con la FK siendo opcional si la decisión la tomó un moderador y no un administrador.

ALTER TABLE decisiones_moderaciones
ADD CONSTRAINT fk_administrador_decision_moderacion
FOREIGN KEY (id_administrador) REFERENCES administrador(id_administrador);