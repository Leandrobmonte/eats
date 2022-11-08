CREATE TABLE categoria_do_cardapio (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome varchar(100) DEFAULT NULL,
  cardapio_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (cardapio_id) REFERENCES cardapio(id)
) ;
