CREATE TABLE
  tbl_fornecedor (
    id_fornecedor BIGSERIAL,
    id_endereco BIGINT,
    CONSTRAINT pk_tbl_fornecedor_id_fornecedor PRIMARY KEY (id_fornecedor),
    CONSTRAINT fk_tbl_fornecedor_tbl_endereco_id_endereco FOREIGN KEY (id_endereco) REFERENCES tbl_endereco (id_endereco)
  )