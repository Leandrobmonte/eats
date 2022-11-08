CREATE TABLE restaurante_forma_de_pagamento (
  restaurante_id BIGINT NOT NULL,
  forma_de_pagamento_id BIGINT NOT NULL,
  FOREIGN KEY (restaurante_id) REFERENCES restaurante(id),
  FOREIGN KEY (forma_de_pagamento_id) REFERENCES forma_de_pagamento(id)
) ;
