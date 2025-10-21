CREATE TABLE
  tbl_produto_estoque (
    id_produto_estoque BIGSERIAL,
    id_produto BIGINT NOT NULL,
    id_estoque BIGINT NOT NULL,
    qt_produto NUMERIC(10, 2) NOT NULL,
    CONSTRAINT pk_tbl_produto_estoque_id_produto_estoque PRIMARY KEY (id_produto_estoque),
    CONSTRAINT fk_tbl_produto_estoque_tbl_produto_id_produto FOREIGN KEY (id_produto) REFERENCES tbl_produto (id_produto),
    CONSTRAINT fk_tbl_produto_estoque_tbl_estoque_id_estoque FOREIGN KEY (id_estoque) REFERENCES tbl_estoque (id_estoque)
  )