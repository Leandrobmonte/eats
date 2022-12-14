CREATE TABLE pagamento (
  id BIGINT NOT NULL AUTO_INCREMENT,
  valor decimal(19,2) NOT NULL,
  nome varchar(100) DEFAULT NULL,
  numero varchar(19) DEFAULT NULL,
  expiracao varchar(7) NOT NULL,
  codigo varchar(3) DEFAULT NULL,
  status varchar(255) NOT NULL,
  forma_de_pagamento_id BIGINT NOT NULL,
  pedido_id BIGINT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (forma_de_pagamento_id) REFERENCES forma_de_pagamento(id),
  FOREIGN KEY (pedido_id) REFERENCES pedido(id)
) ;