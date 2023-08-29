create database escola;
use escola;



CREATE TABLE Aluno (
    ID_Aluno INT PRIMARY KEY,
    Nome VARCHAR(255),
    Data_Nascimento DATE,
    Endereco VARCHAR(255),
    Telefone VARCHAR(20),
    ID_Turma INT,
    constraint fk_turma FOREIGN KEY (ID_Turma) REFERENCES Turma(ID_Turma)
);


CREATE TABLE Professor (
    ID_Professor INT PRIMARY KEY,
    Nome VARCHAR(255),
    Data_Nascimento DATE,
    Materia VARCHAR(100),
    Salario DECIMAL(10, 2)
);

CREATE TABLE Disciplina (
    ID_Disciplina INT PRIMARY KEY,
    Nome_Disciplina VARCHAR(100),
    Carga_Horaria INT
);

CREATE TABLE Turma (
    ID_Turma INT PRIMARY KEY,
    Nome_Turma VARCHAR(100),
    Ano_Letivo INT,
    ID_Professor_Responavel INT,
    FOREIGN KEY (ID_Professor_Responavel) REFERENCES Professor(ID_Professor)
);


CREATE TABLE Nota (
    ID_Nota INT PRIMARY KEY,
    ID_Aluno INT,
    ID_Disciplina INT,
    Valor_Nota DECIMAL(5, 2),
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Disciplina) REFERENCES Disciplina(ID_Disciplina)
);

CREATE TABLE Funcionario (
    ID_Funcionario INT PRIMARY KEY,
    Nome VARCHAR(255),
    Cargo VARCHAR(100),
    Salario DECIMAL(10, 2)
);

CREATE TABLE Sala (
    ID_Sala INT PRIMARY KEY,
    Numero_Sala VARCHAR(10),
    Capacidade_Alunos INT,
    Bloco_Predio VARCHAR(50)
);

CREATE TABLE Responsavel (
    ID_Responsavel INT PRIMARY KEY,
    Nome VARCHAR(255),
    Parentesco VARCHAR(100),
    Endereco VARCHAR(255),
    Telefone VARCHAR(20)
);

INSERT INTO Professor (ID_Professor, Nome, Data_Nascimento, Materia, Salario)
VALUES
    (1, 'João Silva', '1980-05-15', 'Matemática', 5000.00),
    (2, 'Maria Souza', '1975-08-20', 'História', 4800.00),
    (3, 'Carlos Santos', '1990-03-10', 'Física', 5200.00);


INSERT INTO Disciplina (ID_Disciplina, Nome_Disciplina, Carga_Horaria)
VALUES
    (1, 'Álgebra Linear', 60),
    (2, 'História Antiga', 45),
    (3, 'Mecânica Clássica', 75);

INSERT INTO Turma (ID_Turma, Nome_Turma, Ano_Letivo, ID_Professor_Responavel)
VALUES
    (1, 'Turma A', 2023, 1),
    (2, 'Turma B', 2023, 2),
    (3, 'Turma C', 2023, 3);


INSERT INTO Aluno (ID_Aluno, Nome, Data_Nascimento, Endereco, Telefone, ID_Turma)
VALUES
    (1, 'Ana Oliveira', '2005-02-10', 'Rua das Flores, 123', '123-456-7890', 1),
    (2, 'Pedro Santos', '2006-07-25', 'Avenida Principal, 456', '987-654-3210', 1),
    (3, 'Mariana Lima', '2004-11-03', 'Rua das Palmeiras, 789', '555-123-4567', 2);

INSERT INTO Nota (ID_Nota, ID_Aluno, ID_Disciplina, Valor_Nota)
VALUES
    (1, 1, 1, 8.5),
    (2, 1, 2, 7.2),
    (3, 2, 1, 9.0),
    (4, 2, 2, 6.8),
    (5, 3, 1, 7.8),
    (6, 3, 2, 8.3);

INSERT INTO Funcionario (ID_Funcionario, Nome, Cargo, Salario)
VALUES
    (1, 'Carlos Ferreira', 'Secretário', 3500.00),
    (2, 'Lúcia Mendes', 'Zelador', 2800.00);

INSERT INTO Sala (ID_Sala, Numero_Sala, Capacidade_Alunos, Bloco_Predio)
VALUES
    (1, '101', 30, 'Bloco A'),
    (2, '201', 25, 'Bloco B');

INSERT INTO Responsavel (ID_Responsavel, Nome, Parentesco, Endereco, Telefone)
VALUES
    (1, 'Rafaela Souza', 'Mãe', 'Rua das Árvores, 567', '999-888-7777'),
    (2, 'Fernando Santos', 'Pai', 'Avenida das Estrelas, 789', '555-777-4444'),
    (3,'Marcia Almeida' , 'Mãe', 'alameda dos gatos, 300', '555-888-3333' );
    
    
    
