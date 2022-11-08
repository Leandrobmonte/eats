CREATE TABLE item_do_pedido (
  id BIGINT NOT NULL AUTO_INCREMENT,
  observacao varchar(255) DEFAULT NULL,
  quantidade int(11) NOT NULL,
  item_do_cardapio_id BIGINT NOT NULL,
  pedido_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (item_do_cardapio_id) REFERENCES item_do_cardapio(id),
  FOREIGN KEY (pedido_id) REFERENCES pedido(id)
) ;
