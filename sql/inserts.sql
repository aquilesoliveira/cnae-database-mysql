-- Tabela Associativa grau_de_risco
INSERT INTO grau_de_risco (grau_de_risco_id, grau_de_risco_codigo, grau_de_risco_descricao)
VALUES
(1, '1', 'Baixo risco'),
(2, '2', 'Risco leve'),
(3, '3', 'Risco moderado'),
(4, '4', 'Risco elevado'),
(5, '5', 'Risco extremo');

-- Tabela Agrupamento
INSERT INTO agrupamento (agrupamento_id, agrupamento_codigo, agrupamento_descricao)
VALUES
(1, '01', 'Agricultura, Pecuária e Pesca'),
(2, '02', 'Indústria Extrativa'),
(3, '03', 'Indústria de Transformação'),
(4, '04', 'Construção'),
(5, '05', 'Comércio e Reparação de Veículos');

-- Tabela Documentação 
INSERT INTO documentacao (documentacao_id, documentacao_codigo, documentacao_descricao)
VALUES
(1, 'DOC01', 'Alvará de Funcionamento'),
(2, 'DOC02', 'Licença Ambiental'),
(3, 'DOC03', 'Registro na Junta Comercial'),
(4, 'DOC04', 'Certificado de Regularidade do FGTS'),
(5, 'DOC05', 'Certidão Negativa de Débitos');

-- Tabela CNAE 
INSERT INTO cnae (cnae_id, cnae_codigo, cnae_descricao, fk_agrupamento_id)
VALUES
(1, '0111-3/01', 'Cultivo de arroz', 1, 'Necessita licença ambiental'),
(2, '0510-1/01', 'Extração de carvão mineral', 2, 'Alto impacto ambiental'),
(3, '1011-2/01', 'Abate de reses', 3, 'Necessita vigilância sanitária'),
(4, '4120-4/00', 'Construção de edifícios', 4, 'Requer ART'),
(5, '4520-0/01', 'Manutenção de veículos', 5, 'Exige oficina certificada');


-- Tabela Associativa cnae_e_grau_de_risco 
INSERT INTO cnae_e_grau_de_risco (cnae_e_grau_de_risco_id, fk_cnae_id, fk_grau_de_risco_id)
VALUES
(1, 1, 2),
(2, 2, 5),
(3, 3, 4),
(4, 4, 3),
(5, 5, 2);

-- Tabela Associativa cnae_e_documentacao 
INSERT INTO cnae_e_documentacao (cnae_e_documentacao_id, fk_cnae_id, fk_documentacao_id)
VALUES
(1, 1, 2),
(2, 1, 1),
(3, 2, 2),
(4, 3, 3),
(5, 4, 4);
