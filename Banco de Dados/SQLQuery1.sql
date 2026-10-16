DROP TABLE Medicos
CREATE TABLE Medicos (
CPFm CHAR(11) PRIMARY KEY,
Nome VarChar(30),
Endereco VARCHAR(50),
Emails VarChar(30) UNIQUE,
Celular CHAR(11) UNIQUE,
Salario INT CHECK (Salario > 0),
Sexo CHAR(1) CHECK (Sexo = 'M' OR Sexo = 'F'),
EstadoCivil VARCHAR(20) check (EstadoCivil IN ('Solteiro', 'Casado', 'Divorciado', 'Viuvo'))
)

SELECT * FROM Medicos
INSERT INTO	Medicos Values ('12345678901', 'Bob', 'rua Sobe e desce', 'bob@senac.br', '21999999999', 10000, 'M', 'Viuvo')
INSERT INTO	Medicos Values ('12345678999', 'Gabriel', 'rua Sobe e desce', 'gabriel@senac.br', '21999999998', 12000, 'M', 'Solteiro')
INSERT INTO	Medicos Values ('12345678988', 'Tatiana', 'rua Sobe e desce', 'tati@senac.br', '21999999997', 9000, 'F', 'Casado')
INSERT INTO	Medicos Values ('12345678987', 'Kleber', 'rua Sobe e desce', 'kleber@senac.br', '21999999996', 500, 'M', 'Solteiro')

CREATE TABLE Pacientes (
CPFp INT,
Nome VARCHAR(50),
Endereco VARCHAR(100),
Doenca VARCHAR(10),
Celular char(11)
)

ALTER TABLE Medicos ADD Especialidade VARCHAR(20)
ALTER TABLE Medicos DROP COLUMN Especialidade