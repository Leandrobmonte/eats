CREATE TABLE pedido (
  id BIGINT NOT NULL AUTO_INCREMENT,
  data_hora datetime NOT NULL,
  status varchar(255) NOT NULL,
  restaurante_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (restaurante_id) REFERENCES restaurante(id)
) ;
