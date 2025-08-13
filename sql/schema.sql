create database if not exists diagrama9;
use diagrama9;

CREATE TABLE agrupamento (
    agrupamento_id INT PRIMARY KEY,
    agrupamento_codigo VARCHAR(20) UNIQUE,
    agrupamento_descricao VARCHAR(200)
);

CREATE TABLE grau_de_risco (
    grau_de_risco_id INT PRIMARY KEY,
    grau_de_risco_codigo VARCHAR(20) UNIQUE,
    grau_de_risco_descricao VARCHAR(200)
);

CREATE TABLE documentacao (
    documentacao_id INT PRIMARY KEY,
    documentacao_codigo VARCHAR(20) UNIQUE,
    documentacao_descricao VARCHAR(200)
);

CREATE TABLE cnae (
    cnae_id INT PRIMARY KEY,
    cnae_codigo VARCHAR(20) UNIQUE,
    cnae_descricao VARCHAR(200),
    fk_agrupamento_id INT,
    FOREIGN KEY (fk_agrupamento_id) REFERENCES agrupamento(agrupamento_id)
);

CREATE TABLE cnae_e_grau_de_risco (
    cnae_e_grau_de_risco_id INT PRIMARY KEY,
    fk_cnae_id INT,
    fk_grau_de_risco_id INT,
    FOREIGN KEY (fk_cnae_id) REFERENCES cnae(cnae_id),
    FOREIGN KEY (fk_grau_de_risco_id) REFERENCES grau_de_risco(grau_de_risco_id)
);

CREATE TABLE cnae_e_documentacao (
    cnae_e_documentacao_id INT PRIMARY KEY,
    fk_cnae_id INT,
    fk_documentacao_id INT,
    FOREIGN KEY (fk_cnae_id) REFERENCES cnae(cnae_id),
    FOREIGN KEY (fk_documentacao_id) REFERENCES documentacao(documentacao_id)
);
