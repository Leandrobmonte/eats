CREATE TABLE avaliacao (
  id BIGINT NOT NULL AUTO_INCREMENT,
  comentario varchar(255) DEFAULT NULL,
  nota int(11) NOT NULL,
  pedido_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (pedido_id) REFERENCES pedido(id)
) ;
