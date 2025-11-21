-- Criar a tabela tema
CREATE TABLE Tema(
	 codigo INT PRIMARY KEY, 
	 descricao VARCHAR(20) NOT NULL
	
);
-- CRIAR A TABELA DE LIVRO
CREATE TABLE Livro(
	 isbn  INT PRIMARY KEY,
	 qtdPaginas INT,
	 titulo VARCHAR(50) NOT NULL,
	 anoPublicacao VARCHAR(4),
	 codTema INT,
	 FOREIGN KEY(codTema) REFERENCES tema(codigo)
);
-- CRIAR A TABELA DE PAIS
CREATE TABLE Pais(
	sigla VARCHAR(2) PRIMARY KEY,
	nome VARCHAR(40) NOT NULL
);

-- CRIAR A TABELA AUTOR
CREATE TABLE Autor(
	codigo INT PRIMARY KEY,
	nome VARCHAR(30) NOT NULL,
	dataNasc date,
	email varchar(30),
	codPais VARCHAR(2),
	FOREIGN KEY(codPais) REFERENCES Pais(sigla)
);
--criar tabela livro_autor oriunda da cardinalidade n-n entre LIVRO E AUTOR
---- UM AUTOR PODE ESCREVER MAIS DE UM LIVRO E UM LIVRO PODE SER ESCRITO POR MAIS DE UM AUTOR


CREATE TABLE AutorLIvro(
	codigo INT PRIMARY KEY,
	codAutor INT,
	codLIvro INT,
	FOREIGN KEY(codAutor) REFERENCES Autor(codigo),
	FOREIGN KEY(codLIvro) REFERENCES Livro(isbn),
	tipoContribuicao VARCHAR(10) NOT NULL
);


