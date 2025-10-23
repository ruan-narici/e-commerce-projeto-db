CREATE TABLE
  tbl_vendedor (
    id_vendedor BIGSERIAL,
    ds_razao_social VARCHAR(255) NOT NULL,
    id_endereco BIGINT,
    CONSTRAINT pk_tbl_vendedor_id_vendedor PRIMARY KEY (id_vendedor),
    CONSTRAINT fk_tbl_vendedor_tbl_endereco_id_endereco FOREIGN KEY (id_endereco) REFERENCES tbl_endereco (id_endereco)
  )