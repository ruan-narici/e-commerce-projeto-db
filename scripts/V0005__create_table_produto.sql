CREATE TABLE
  tbl_produto (
    id_produto BIGSERIAL,
    nm_categoria VARCHAR(100) NOT NULL,
    ds_produto VARCHAR(255) NOT NULL,
    vl_produto NUMERIC(10, 2) NOT NULL,
    id_plataforma BIGINT NOT NULL,
    id_fornecedor BIGINT NOT NULL,
    CONSTRAINT pk_tbl_produto_id_produto PRIMARY KEY (id_produto),
    CONSTRAINT fk_tbl_produto_tbl_plataforma_id_plataforma FOREIGN KEY (id_plataforma) REFERENCES tbl_plataforma (id_plataforma),
    CONSTRAINT fk_tbl_produto_tbl_fornecedor_id_fornecedor FOREIGN KEY (id_fornecedor) REFERENCES tbl_fornecedor (id_fornecedor)
  )