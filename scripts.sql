-- Apagar tabelas caso já existam (opcional)
DROP TABLE empregados CASCADE CONSTRAINTS;
DROP TABLE departamentos CASCADE CONSTRAINTS;

-- Tabela de Departamentos
CREATE TABLE departamentos (
  id              NUMBER(4)       PRIMARY KEY,
  nome            VARCHAR2(50)    NOT NULL
);

-- Tabela de Empregados
CREATE TABLE empregados (
  id              NUMBER(6)       PRIMARY KEY,
  nome            VARCHAR2(100)   NOT NULL,
  cargo           VARCHAR2(50),
  salario         NUMBER(10,2),
  departamento_id NUMBER(4),
  CONSTRAINT fk_emp_depto FOREIGN KEY (departamento_id)
    REFERENCES departamentos (id)
);

CREATE SEQUENCE seq_empregados
  START WITH 1
  INCREMENT BY 1
  NOCACHE;

INSERT INTO departamentos (id, nome) VALUES (10, 'Recursos Humanos');
INSERT INTO departamentos (id, nome) VALUES (20, 'Vendas');
INSERT INTO departamentos (id, nome) VALUES (30, 'TI');
INSERT INTO departamentos (id, nome) VALUES (40, 'Financeiro');
COMMIT;

INSERT INTO empregados (id, nome, cargo, salario, departamento_id)
VALUES (seq_empregados.NEXTVAL, 'Ana Souza', 'Analista de RH', 2500, 10);

INSERT INTO empregados (id, nome, cargo, salario, departamento_id)
VALUES (seq_empregados.NEXTVAL, 'Carlos Pereira', 'Gerente de Vendas', 4800, 20);

INSERT INTO empregados (id, nome, cargo, salario, departamento_id)
VALUES (seq_empregados.NEXTVAL, 'Fernanda Lima', 'Vendedora', 1800, 20);

INSERT INTO empregados (id, nome, cargo, salario, departamento_id)
VALUES (seq_empregados.NEXTVAL, 'João Oliveira', 'Programador', 2200, 30);

INSERT INTO empregados (id, nome, cargo, salario, departamento_id)
VALUES (seq_empregados.NEXTVAL, 'Marcos Dias', 'DBA', 3500, 30);

INSERT INTO empregados (id, nome, cargo, salario, departamento_id)
VALUES (seq_empregados.NEXTVAL, 'Patrícia Santos', 'Contadora', 2700, 40);

INSERT INTO empregados (id, nome, cargo, salario, departamento_id)
VALUES (seq_empregados.NEXTVAL, 'Rafael Souza', 'Estagiário', 950, 30);

INSERT INTO empregados (id, nome, cargo, salario, departamento_id)
VALUES (seq_empregados.NEXTVAL, 'Bianca Costa', 'Auxiliar Adm.', 1200, 10);

COMMIT;


