--- 27-03-2024 10:37:44
--- Tabela Alunos
CREATE TABLE Alunos (
  id_aluno INT PRIMARY KEY,
  nome_aluno VARCHAR (100),
  nascimento_aluno DATE,
  genero_aluno VARCHAR (50),
  endereco_aluno VARCHAR (100),
  telefone_aluno VARCHAR (100),
  email_aluno VARCHAR (100)
  );

--- 27-03-2024 10:37:46
--- Tabela Professores
CREATE TABLE Professores (
  id_professor INT PRIMARY KEY,
  nome_professor VARCHAR (100),
  nascimento_professor DATE,
  genero_professor VARCHAR (50),
  telefone_professor VARCHAR (100),
  email_professor VARCHAR (100)
  );

--- 27-03-2024 10:37:48
--- Tabela Disciplinas
CREATE TABLE Disciplinas (
  id_disciplina INT PRIMARY KEY,
  nome_disciplina VARCHAR (100),
  descrição_disciplina TEXT,
  carga_horaria_disciplina INT,
  id_professor_disciplina INT,
  FOREIGN KEY (id_professor_disciplina) REFERENCES Professores (id_professor)
  );

--- 27-03-2024 10:37:50
--- Tabela Turmas
CREATE TABLE Turmas (
  id_turma INT PRIMARY KEy,
  nome_turma VARCHAR (50),
  Ano letivo INT,
  id_professor_turma INT,
  FOREIGN KEY (id_professor_turma) REFERENCES Professores (id_professor)
  );

--- 27-03-2024 10:37:56
--- Tabela Turma_Disciplinas
CREATE TABLE Turma_Disciplinas (
  id_t INT,
  id_d INT,
  FOREIGN KEY (id_t) REFERENCES Turmas (id_turma),
  FOREIGN KEY (id_d) REFERENCES Disciplinas (id_disciplina)
  );

--- 27-03-2024 10:37:58
--- Tabela Turma_Alunos
CREATE TABLE Turma_Alunos (
  id_tur INT,
  id_alu INT,
  FOREIGN KEY (id_tur) REFERENCES Turmas (id_turma),
  FOREIGN KEY (id_alu) REFERENCES Alunos (id_aluno)
  );

--- 27-03-2024 10:38:01
--- Tabela Notas
CREATE TABLE Notas (
  id_nota INT PRIMARY KEY,
  id_aluno_nota INT,
  id_disciplina_notas INT,
  valor_nota FLOAT,
  data_nota DATE,
  FOREIGN KEY (id_aluno_nota) REFERENCES Alunos (id_aluno),
  FOREIGN KEY (id_disciplina_notas) REFERENCES Disciplinas (id_disciplina)
);

INSERT into Alunos 
(id_aluno, nome_aluno, nascimento_aluno, genero_aluno, endereco_aluno, telefone_aluno, email_aluno)
  VALUES
(1, 'João Silva', '2005-03-15', 'Masculino', 'Rua das Flores, 123', '(11) 9876-5432',	'joao@email.com'),
(2,	'Maria Santos',	'2006-06-20',	'Feminino',	'Avenida Principal, 456', '(11) 8765-4321',	'maria@email.com'),
(3,	'Pedro Soares',	'2004-01-10',	'Masculino', 'Rua Central, 789', '(11) 7654-3210',	'pedro@email.com'),
(4,	'Ana Lima',	'2005-04-02',	'Feminino',	'Rua da Escola, 56',	'(11) 8765-4321', 'ana@email.com'),
(5,	'Mariana Fernandes', '2005-08-12', 'Feminino', 'Avenida da Paz, 789',	'(11) 5678-1234', 'mariana@email.com'),
(6,	'Lucas Costa',	'2003-11-25',	'Masculino', 'Rua Principal, 456', '(11) 1234-5678', 'lucas@email.com'),
(7,	'Isabela Santos', '2006-09-10',	'Feminino',	'Rua da Amizade, 789', '(11) 9876-5432', 'isabela@email.com'),
(8,	'Gustavo Pereira', '2004-05-15',	'Masculino', 'Avenida dos Sonhos, 123',	'(11) 7654-3210', 'gustavo@email.com'),
(9,	'Carolina Oliveira', '2005-02-20', 'Feminino', 'Rua da Alegria, 456',	'(11) 8765-4321', 'carolina@email.com'),
(10, 'Daniel Silva', '2003-10-05', 'Masculino', 'Avenida Central, 789', '(11) 1234-5678',	'daniel@email.com'),
(11, 'Larissa Souza', '2004-12-08', 'Feminino', 'Rua da Felicidade, 123',	'(11) 9876-5432', 'larissa@email.com'),
(12, 'Bruno Costa',	'2005-07-30',	'Masculino', 'Avenida Principal, 456',	'(11) 7654-3210', 'bruno@email.com'),
(13, 'Camila Rodrigues', '2006-03-22', 'Feminino', 'Rua das Estrelas, 789', '(11) 8765-4321', 'camila@email.com'),
(14, 'Rafael Fernandes', '2004-11-18', 'Masculino', 'Avenida dos Sonhos, 123', '(11) 1234-5678', 'rafael@email.com'),
(15, 'Letícia Oliveira', '2005-01-05', 'Feminino', 'Rua da Alegria, 456',	'(11) 9876-5432', 'leticia@email.com'),
(16, 'Fernanda Lima', '2004-02-12', 'Feminino', 'Rua da Esperança, 789', '(11) 4567-8901', 'fernanda@email.com'),
(17, 'Vinícius Santos',	'2003-07-28',	'Masculino','Avenida da Amizade, 123',	'(11) 8901-2345', 'vinicius@email.com'),
(18, 'Juliana Pereira',	'2006-09-01', 'Feminino',	'Rua das Rosas, 789',	'(11) 3456-7890', 'juliana@email.com');

INSERT INTO Disciplinas
(id_disciplina, nome_disciplina, descrição_disciplina, carga_horaria_disciplina, id_professor_disciplina)
	VALUES
(1,	'Matemática', 'Estudo de conceitos matemáticos avançados', 60, 1),
(2,	'História', 'História mundial e local', 45, 2),
(3,	'Física', 'Princípios fundamentais da física', 60, 1),
(4,	'Química', 'Estudo da química e suas aplicações', 45, 3),
(5,	'Inglês', 'Aulas de inglês para iniciantes', 45, 4),
(6,	'Artes', 'Exploração da criatividade artística', 30, 5);

INSERT into Professores
  (id_professor, nome_professor, nascimento_professor, genero_professor, telefone_professor, email_professor)
  VALUES
(1,	'Ana Oliveira', '1980-05-25', 'Feminino', '(11) 1234-5678',	'ana@email.com'),
(2,	'Carlos Ferreira', '1975-09-12', 'Masculino', '(11) 2345-6789',	'carlos@email.com'),
(3,	'Mariana Santos', '1982-03-15',	'Feminino',	'(11) 3456-7890', 'mariana@email.com'),
(4,	'Ricardo Silva', '1978-08-20', 'Masculino',	'(11) 7890-1234', 'ricardo@email.com'),
(5,	'Fernanda Lima', '1985-01-30', 'Feminino', '(11) 4567-8901', 'fernanda@email.com');

INSERT into Turmas
  (id_turma, nome_turma, ano_letivo, id_professor_turma)
  VALUES
(1, 'Turma A', 2023, 1),
(2, 'Turma B', 2023, 2),
(3, 'Turma C', 2023, 3),
(4, 'Turma D', 2023, 4),
(5, 'Turma E', 2023, 5);

INSERT INTO Turma_Disciplinas
  (id_t, id_d)
  VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (1, 3),
  (2, 1),
  (3, 2);

INSERT INTO Turma_Alunos
 (id_tur, id_alu)
 VALUES
(1, 1),
(2,	2),
(3, 3),
(4,	4),
(5,	5),
(1,	6),
(2,	7),
(3,	8),
(4,	9),
(5,	10);

INSERT INTO Notas 
  (id_nota, id_aluno_nota, id_disciplina_notas, valor_nota, data_nota)
  VALUES
(2,	1,	1,	6.19,	'07/07/2023'),
(3, 1,	2,	7.18,	'07/07/2023'),
(4,	1,	3,	7.47,	'07/07/2023'),
(5,	1,	4,	7.46,	'07/07/2023'),
(6,	1,	5,	4.35,	'07/07/2023'),
(7,	1,	6,	4.43,	'07/07/2023'),
(8,	1,	7,	0.76,	'07/07/2023'),
(9,	1,	8,	9.22,	'07/07/2023'),
(10, 1,	9,	9.4,	'07/07/2023'),
(11, 1,	10,	3.28,	'07/07/2023'),
(12, 2,	1, 1.34,	'09/07/2023'),
(13, 2,	2,	03.01,	'09/07/2023'),
(14, 2,	3,	1.66,	'09/07/2023'),
(15, 2,	4,	0.03,	'09/07/2023'),
(16, 2,	5,	4.34,	'09/07/2023'),
(17, 2,	6,	04.02,	'09/07/2023'),
(18, 2,	7,	8.79,	'09/07/2023'),
(19, 2,	8,	1.17,	'09/07/2023'),
(20, 2,	9,	8.26,	'09/07/2023'),
(21, 2,	10,	3.41,	'09/07/2023'),
(22, 3,	1, 6.82,	'27/07/2023'),
(23, 3,	2,	8.21,	'27/07/2023'),
(24, 3,	3,	01.03,	'27/07/2023'),
(25, 3,	4,	4.1,	'27/07/2023'),
(26, 3,	5,	0.25,	'27/07/2023'),
(27, 3,	6,	6.63,	'27/07/2023'),
(28, 3,	7,	9.74,	'27/07/2023'),
(29, 3,	8,	3.77,	'27/07/2023'),
(30, 3,	9,	0.58,	'27/07/2023'),
(31, 3,	10,	8.52,	'27/07/2023'),
(32, 4,	1,	8.37,	'08/08/2023'),
(33, 4,	2,	0.26,	'08/08/2023'),
(34, 4,	3,	5.95,	'08/08/2023'),
(35, 4,	4,	6.98,	'08/08/2023'),
(36, 4,	5,	6.18,	'08/08/2023'),
(37, 4,	6,	4.79,	'08/08/2023'),
(38, 4,	7,	7.96,	'08/08/2023'),
(39, 4,	8,	0.62,	'08/08/2023'),
(40, 4,	9,	7.77,	'08/08/2023'),
(41, 4,	10,	5.81,	'08/08/2023'),
(42, 5,	1,	2.25,	'15/08/2023'),
(43, 5,	2,	5.82,	'15/08/2023'),
(44, 5,	3,	4.11,	'15/08/2023'),
(45, 5,	4,	7.99,	'15/08/2023'),
(46, 5,	5,	3.23,	'15/08/2023'),
(47, 5,	6,	08.09,	'15/08/2023'),
(48, 5,	7,	8.24,   '15/08/2023'),
(49, 5,	8,	3.33,	'15/08/2023'),
(50, 5,	9,	4.24,	'15/08/2023'),
(51, 5,	10,	0.11,	'15/08/2023');

--- 27-03-2024 12:54:26
--- Tabela Notas
SELECT * FROM Notas;

--- 27-03-2024 13:48:21
--- Consultas
SELECT * FROM Alunos ORDER BY nome_aluno;

--- 27-03-2024 13:49:21
--- Consultas
SELECT * FROM Disciplinas WHERE carga_horaria_disciplina > 40;


--- 27-03-2024 13:52:38
--- Consultas
SELECT * FROM Notas WHERE valor_nota > 6 AND valor_nota < 8;

