CREATE TABLE
  tbl_pagamento (
    id_pagamento BIGSERIAL,
    ds_tipo_pagamento VARCHAR(50) NOT NULL,
    vl_pagamento NUMERIC(10, 2) NOT NULL,
    id_cliente BIGINT NOT NULL,
    CONSTRAINT pk_tbl_pagamento_id_pagamento PRIMARY KEY (id_pagamento),
    CONSTRAINT fk_tbl_pagamento_tbl_cliente_id_cliente FOREIGN KEY (id_cliente) REFERENCES tbl_cliente (id_cliente)
  )