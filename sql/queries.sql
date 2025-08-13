-- CONSULTAS (SELECTs) FUNCIONAIS

-- 1. Buscar todos os CNAEs com sua descrição
SELECT * FROM cnae;

-- 2. Buscar todos os CNAEs e o agrupamento correspondente
SELECT c.cnae_codigo, a.agrupamento_descricao
FROM cnae c
JOIN agrupamento a ON c.fk_agrupamento_id = a.agrupamento_id;

-- 3. Ver todos os documentos associados a um CNAE específico
SELECT c.cnae_codigo, d.documentacao_descricao
FROM cnae c
JOIN cnae_e_documentacao cd ON c.cnae_id = cd.fk_cnae_id
JOIN documentacao d ON cd.fk_documentacao_id = d.documentacao_id;

-- 4. Listar grau de risco de um CNAE
SELECT c.cnae_codigo, g.grau_de_risco_descricao
FROM cnae c
JOIN cnae_e_grau_de_risco cg ON c.cnae_id = cg.fk_cnae_id
JOIN grau_de_risco g ON cg.fk_grau_de_risco_id = g.grau_de_risco_id;

-- 5. Buscar CNAEs com um grau de risco específico
SELECT c.cnae_codigo
FROM cnae c
JOIN cnae_e_grau_de_risco cg ON c.cnae_id = cg.fk_cnae_id
WHERE cg.fk_grau_de_risco_id = 1;

-- 6. Contar quantos CNAEs têm um determinado documento
SELECT COUNT(*) 
FROM cnae_e_documentacao 
WHERE fk_documentacao_id = 1;

-- 7. Mostrar todos os agrupamentos que possuem CNAEs associados
SELECT DISTINCT a.agrupamento_descricao
FROM agrupamento a
JOIN cnae c ON a.agrupamento_id = c.fk_agrupamento_id;

-- 8. Listar todos os documentos de todos os CNAEs
SELECT c.cnae_codigo, d.documentacao_codigo
FROM cnae c
JOIN cnae_e_documentacao cd ON c.cnae_id = cd.fk_cnae_id
JOIN documentacao d ON cd.fk_documentacao_id = d.documentacao_id;

-- 9. Agrupar quantidade de CNAEs por agrupamento
SELECT a.agrupamento_descricao, COUNT(c.cnae_id) AS total_cnaes
FROM agrupamento a
JOIN cnae c ON a.agrupamento_id = c.fk_agrupamento_id
GROUP BY a.agrupamento_descricao;

-- 10. Ver CNAEs que não possuem documentação
SELECT c.cnae_codigo
FROM cnae c
LEFT JOIN cnae_e_documentacao cd ON c.cnae_id = cd.fk_cnae_id
WHERE cd.fk_documentacao_id IS NULL;

-- Atualizações de 10 dados: 
UPDATE agrupamento SET agrupamento_descricao = 'Novo Nome' WHERE agrupamento_id = 1;

-- Alterar estrutura (adicionar campo):
ALTER TABLE cnae ADD cnae_observacao VARCHAR(100); 

-- Excluir 2 registros: 
DELETE FROM agrupamento WHERE agrupamento_id = 5;
DELETE FROM documentacao WHERE documentacao_id = 3;
