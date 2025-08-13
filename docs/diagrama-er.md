## Diagrama Entidade-Relacionamento do Banco CNAE

### Tabelas Principais 
- CNAE: Armazena informações sobe códigos e descrições das atividades
econômicas.
- Grau de Risco: Classifica o risco associado a uma atividade.
- Documentação: Lista documentos exigidos para cada atividade.
- Agrupamento: categoriza as atividades em grupos maiores.

### Tabelas Associativas:
- cnae_e_grau_de_riso – Relaciona CENAEs com seus respectivos graus
de risco.
- cnae_e_documentacao – Relaciona CENAEs com seus documentos
obrigatórios.