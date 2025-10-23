CREATE TABLE
  tbl_pedido (
    id_pedido BIGSERIAL,
    ds_status VARCHAR(100) NOT NULL DEFAULT 'AGUARDANDO PAGAMENTO',
    vl_frete NUMERIC(10, 2) NOT NULL,
    cd_rastreio VARCHAR(20),
    id_pagamento BIGINT NOT NULL,
    id_cliente BIGINT NOT NULL,
    id_endereco BIGINT NOT NULL,
    CONSTRAINT pk_tbl_pedido_id_pedido PRIMARY KEY (id_pedido),
    CONSTRAINT fk_tbl_pedido_tbl_pagamento_id_pagamento FOREIGN KEY (id_pagamento) REFERENCES tbl_pagamento (id_pagamento),
    CONSTRAINT fk_tbl_pedido_tbl_cliente_id_cliente FOREIGN KEY (id_cliente) REFERENCES tbl_cliente (id_cliente),
    CONSTRAINT fk_tbl_pedido_tbl_endereco_id_endereco FOREIGN KEY (id_endereco) REFERENCES tbl_endereco (id_endereco)
  )