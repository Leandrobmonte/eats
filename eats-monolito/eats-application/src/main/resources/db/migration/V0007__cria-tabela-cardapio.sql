CREATE TABLE cardapio (
  id BIGINT NOT NULL AUTO_INCREMENT,
  restaurante_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (restaurante_id) REFERENCES restaurante(id)
) ;
