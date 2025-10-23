CREATE TABLE
  tbl_produto_pedido (
    id_produto_pedido BIGSERIAL,
    id_produto BIGINT NOT NULL,
    id_pedido BIGINT NOT NULL,
    qt_produto NUMERIC(10, 2) NOT NULL,
    CONSTRAINT pk_tbl_produto_pedido_id_produto_pedido PRIMARY KEY (id_produto_pedido),
    CONSTRAINT fk_tbl_produto_pedido_tbl_produto_id_produto FOREIGN KEY (id_produto) REFERENCES tbl_produto (id_produto),
    CONSTRAINT fk_tbl_produto_pedido_tbl_pedido_id_pedido FOREIGN KEY (id_pedido) REFERENCES tbl_pedido (id_pedido)
  )