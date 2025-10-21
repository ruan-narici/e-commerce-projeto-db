CREATE TABLE
  tbl_estoque (
    id_estoque BIGSERIAL,
    id_endereco BIGINT NOT NULL,
    CONSTRAINT pk_tbl_estoque_id_estoque PRIMARY KEY (id_estoque),
    CONSTRAINT fk_tbl_estoque_tbl_endereco_id_endereco FOREIGN KEY (id_endereco) REFERENCES tbl_endereco (id_endereco)
  )