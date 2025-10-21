CREATE TABLE tbl_endereco (
  id_endereco BIGSERIAL,
  nr_logradouro INTEGER,
  ds_logradouro VARCHAR(100),
  nm_bairro VARCHAR(100),
  nm_cidade VARCHAR(100),
  nm_estado VARCHAR(100),
  nm_pais VARCHAR(100),
  CONSTRAINT pk_tbl_endereco_id_endereco PRIMARY KEY(id_endereco)
)