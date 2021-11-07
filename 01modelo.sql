CREATE TABLE CLIENTES (
    id SERIAL PRIMARY KEY,
    nome varchar(40) not null,
    cpf varchar(11),
    sexo char(1),
    email varchar(50),
    CREATED_AT TIMESTAMP default CURRENT_TIMESTAMP,
    UPDATED_AT TIMESTAMP
);

CREATE TABLE TELEFONES (
    id SERIAL PRIMARY KEY,
    tipo CHAR(3) not null,
    numero varchar(20),
    CREATED_AT TIMESTAMP default CURRENT_TIMESTAMP,
    UPDATED_AT TIMESTAMP
);

CREATE TABLE ENDERECOS (
    id SERIAL PRIMARY KEY,
    rua varchar(60),
    numero varchar(6),
    bairro varchar(40),
    cidade varchar(45),
    uf char(2),
    CREATED_AT TIMESTAMP default CURRENT_TIMESTAMP,
    UPDATED_AT TIMESTAMP
);

ALTER TABLE enderecos ADD COLUMN id_cliente integer;
ALTER TABLE ENDERECOS ADD CONSTRAINT fk_cliente
FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id);

CREATE TABLE CLI_TEL (
    id_cli integer,
    id_tel integer
);

ALTER TABLE CLI_TEL ADD CONSTRAINT fk_cli
FOREIGN KEY (id_cli) REFERENCES CLIENTES(id);

ALTER TABLE CLI_TEL ADD CONSTRAINT fk_tel
FOREIGN KEY (id_tel) REFERENCES TELEFONES(id);


INSERT INTO clientes (nome, cpf, sexo, email) VALUES ('Leandro Rocha', '06521895478', 'M', 'leandro@rocha.com');
INSERT INTO clientes (nome, cpf, sexo, email) VALUES ('Pepi Porco', '94890645489', 'M', 'pepi@rocha.com');
INSERT INTO clientes (nome, cpf, sexo, email) VALUES ('Maria Porquinha', '60839158483', 'F', 'maria@rocha.com');
INSERT INTO clientes (nome, cpf, sexo, email) VALUES ('Vitor Gabriel', '42610859414', 'M', 'votor@rocha.com');

SELECT * FROM clientes ORDER BY SEXO = 'M' DESC;