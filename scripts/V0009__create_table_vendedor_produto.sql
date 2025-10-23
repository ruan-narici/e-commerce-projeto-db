CREATE TABLE
  tbl_vendedor_produto (
    id_vendedor_produto BIGSERIAL,
    id_vendedor BIGINT NOT NULL,
    id_produto BIGINT NOT NULL,
    qt_produto NUMERIC(10, 2) NOT NULL,
    CONSTRAINT pk_tbl_vendedor_produto_id_vendedor_produto PRIMARY KEY (id_vendedor_produto),
    CONSTRAINT fk_tbl_vendedor_produto_tbl_vendedor_id_vendedor FOREIGN KEY (id_vendedor) REFERENCES tbl_vendedor (id_vendedor),
    CONSTRAINT fk_tbl_vendedor_produto_tbl_produto_id_produto FOREIGN KEY (id_produto) REFERENCES tbl_produto (id_produto)
  )