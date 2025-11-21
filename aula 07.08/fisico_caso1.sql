-- CASO DE ESTUDO 1 BANCO DE DADOS

--- Criar a tabela TEMA
CREATE TABLE Tema (
	codigo INT PRIMARY KEY,
	descricao VARCHAR(20) NOT NULL
);

--- Criar a tabela LIVRO
CREATE TABLE Livro (
	isbn INT PRIMARY KEY,
	qtdPaginas INT,
	titulos VARCHAR(50),
	anoPublicacao VARCHAR(4),
	codTema INT NOT NULL,
	FOREIGN KEY (codTema) REFERENCES Tema(codigo)
);



-- Modelo Lógico Abaixo---
--Tema(#codigo,descricao)
--Livro(#isbn,qtdPaginas,titulos,anoPublicacao,@codTema)
--    codTema Referencia Tema(codigo)
--Pais(#sigla,nome)
--Autor(#codigo,nome,dataNasc,email,@siglaPais)
--    siglaPais Referencia Pais(sigla)
--livroAutor(#codigo,tipoContribuicao,@codAutor,@codLivro)
--    codAutor Referencia Autor(codigo)
--    codLivro Referencia Livro(isbn)