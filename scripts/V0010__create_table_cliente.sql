CREATE TABLE
  tbl_cliente (
    id_cliente BIGSERIAL,
    nm_cliente VARCHAR(255) NOT NULL,
    cd_cpf_cnpj VARCHAR(20) NOT NULL,
    id_endereco BIGINT NOT NULL,
    CONSTRAINT pk_tbl_cliente_id_cliente PRIMARY KEY (id_cliente),
    CONSTRAINT fk_tbl_cliente_tbl_endereco_id_endereco FOREIGN KEY (id_endereco) REFERENCES tbl_endereco (id_endereco)
  )