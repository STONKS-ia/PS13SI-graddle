# PS13SI-graddle
Projeto desenvolvido para a realização da Prova Semestral do 1° Semestre
O sistema tem como objetivo ajudar a gerenciar as atividades e profissionais da empresa PS13SI. Entre suas responsabilidades está a criação do plano de treinamentos oferecido, elaboração do conteúdo, triagem e contratação de professores, e apontamento do grau de conhecimento dos professores nos assuntos que são alvo do
BootCamp.

Para auxiliar na criação de banco de dados, segue os scprits:
```
CREATE TABLE USUARIOS_PS(
    ID_USUARIO NUMBER(20) PRIMARY KEY,
    CPF        VARCHAR(100) UNIQUE,
    NOME       VARCHAR(100) NOT NULL,
    EMAIL      VARCHAR(100) NOT NULL,
    TELEfONE   VARCHAR(100),
    SENHA      VARCHAR(150) NOT NULL,
    TIPO       VARCHAR(20) NOT NULL
);

CREATE TABLE CURSOS(
    ID_CURSO    NUMBER(20) PRIMARY KEY,
    NOME        VARCHAR(100) NOT NULL,
    DURACAO     VARCHAR(50) NOT NULL,
    PRECO       VARCHAR(50),
    DESCRICAO_CURSO VARCHAR(500)
);

CREATE SEQUENCE USUARIO_PS_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER TR_INSERT_ID_USUARIO
                  BEFORE INSERT ON USUARIOS_PS FOR EACH ROW       
BEGIN
 
SELECT USUARIO_PS_SEQ.NEXTVAL
INTO :new.ID_USUARIO
FROM DUAL;
END;
/

CREATE SEQUENCE CURSO_PS_SEQ START WITH 1 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER TR_INSERT_ID_CURSO
                  BEFORE INSERT ON CURSOS FOR EACH ROW       
BEGIN
 
SELECT CURSO_PS_SEQ.NEXTVAL
INTO :new.ID_CURSO
FROM DUAL;
END;
/
```
