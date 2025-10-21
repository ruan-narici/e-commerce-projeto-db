CREATE TABLE
  tbl_endereco (
    id_endereco BIGSERIAL,
    nr_logradouro INTEGER NOT NULL,
    ds_logradouro VARCHAR(100) NOT NULL,
    nm_bairro VARCHAR(100) NOT NULL,
    nm_cidade VARCHAR(100) NOT NULL,
    nm_estado VARCHAR(100) NOT NULL,
    nm_pais VARCHAR(100) NOT NULL,
    CONSTRAINT pk_tbl_endereco_id_endereco PRIMARY KEY (id_endereco)
  )