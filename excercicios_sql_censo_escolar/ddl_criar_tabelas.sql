CREATE TABLE municipio (
    co_municipio INT PRIMARY KEY,
    no_municipio VARCHAR(100) NOT NULL,
    sg_uf CHAR(2) NOT NULL
);

CREATE TABLE escola (
    co_entidade INT PRIMARY KEY,
    no_entidade VARCHAR(100) NOT NULL,
    co_municipio INT REFERENCES municipio(co_municipio) NOT NULL,
    tp_localizacao INT NOT NULL CHECK(tp_localizacao IN (1, 2)),
    in_internet BOOLEAN DEFAULT false NOT NULL,
    qt_desktop_aluno INT DEFAULT 0 NOT NULL

);

CREATE TABLE matricula (
    id_matricula SERIAL PRIMARY KEY,
    id_aluno VARCHAR NOT NULL,
    id_turma INT NOT NULL,
    co_entidade INT REFERENCES escola(co_entidade) NOT NULL,
    etapa VARCHAR NOT NULL CHECK ( etapa IN ('Fundamental', 'Médio', 'Profissional')),
    nu_idade INT,
    UNIQUE (id_turma, id_aluno)

);
