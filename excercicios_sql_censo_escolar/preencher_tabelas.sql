INSERT INTO municipio (co_municipio, no_municipio, sg_uf)
VALUES (2611606, 'Recife', 'PE'),
       (2609600, 'Olinda', 'PE'),
       (2604106, 'Caruaru', 'PE'),
       (2507507, 'João Pessoa', 'PB');

INSERT INTO escola (co_entidade, no_entidade, co_municipio, tp_localizacao, in_internet)
VALUES (101, 'Capibaribe', 2611606, 1, TRUE ),
       (102, 'Mangue Vivo', 2611606, 1, FALSE),
       (103, 'Sítio Juá', 2604106, 2, TRUE),
       (104, 'Serra Verde', 2604106, 2, FALSE),
       (105, 'Alto Bonito', 2604106, 1, FALSE),
       (106, 'Rio Paraiba', 2507507, 2, TRUE);

INSERT INTO matricula ( id_aluno, id_turma, co_entidade, etapa, nu_idade)
VALUES ('A1', 11, 101, 'Médio', 15),
       ('A2', 11, 101, 'Médio', 16),
       ('A3', 11, 101, 'Médio', 17),
       ('A3', 12, 101, 'Profissional', 17),
       ('A4', 21, 102, 'Fundamental', 12),
       ('A5', 31, 103, 'Fundamental', 9),
       ('A6', 32, 103, 'Médio', 18),
       ('A7', 61, 106, 'Fundamental', 10);

