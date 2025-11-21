-- CARGA DOS DADOS

--inserção na tabela tema:
INSERT INTO Tema(codigo, descricao) VALUES(1, 'Fantasia'); --adiciona na tabela Tema codigo(1), descricao('Fantasia') na ordem 
INSERT INTO Tema VALUES(2, 'Ficção Científica'); --adiciona na tabela Tema sem codigo, descricao, porem só funciona porque tem todos os dados(codigo descricao)
INSERT INTO Tema(codigo, descricao) VALUES(3, 'Romance');
INSERT INTO Tema(codigo, descricao) VALUES(4, 'Mistério');
INSERT INTO Tema(codigo, descricao) VALUES(5, 'Realismo');

select * from Tema; --mostra a tabela

--inserção na tabela pais:
INSERT INTO Pais(sigla, nome) VALUES('BR', 'Brasil');
INSERT INTO Pais(sigla, nome) VALUES('GB', 'Reino Unido');
INSERT INTO Pais(sigla, nome) VALUES('US', 'Estados Unidos');
INSERT INTO Pais(sigla, nome) VALUES('PT', 'Portugal');
INSERT INTO Pais(sigla, nome) VALUES('CO', 'Colômbia');

select * from Pais;

--inserção na tabela autor:
--data ('YYYY-MM-DD')
INSERT INTO Autor(codigo, nome, dataNasc, email, codPais)
		VALUES(101, '3.K Rowling', '1965-07-31', 'jk@email.com', 'GB');
INSERT INTO Autor(codigo, nome, dataNasc, codPais)
		VALUES(102, 'Isaac Asimov', '1920-01-02', 'US');
INSERT INTO Autor(codigo, nome, dataNasc, email, codPais)
		VALUES(103, 'Machado de Assis', '1839-06-21', 'ms@email.com', 'BR');
INSERT INTO Autor(codigo, nome, dataNasc, codPais)
		VALUES(104, 'Agatha Christie', '1890-09-15', 'GB');

select * from Autor;

--inserção na tabela livro:
INSERT INTO Livro(isbn, qtdPaginas, titulo, anoPublicacao, codTema)
		VALUES(1001, 250, 'Harry Potter e a Pedra Filosofal', '1997', 1);
INSERT INTO Livro(isbn, qtdPaginas, titulo, anoPublicacao, codTema)
		VALUES(1002, 224, 'Eu Robô', '1950', 2);
INSERT INTO Livro(isbn, qtdPaginas, titulo, anoPublicacao, codTema)
		VALUES(1003, 208, 'Dom Casmurro', '1899', 5);
INSERT INTO Livro(isbn, qtdPaginas, titulo, anoPublicacao, codTema)
		VALUES(1004, 212, 'O Assassinato no Expresso do Oriente', '1934', 4);
INSERT INTO Livro(isbn, qtdPaginas, titulo, anoPublicacao, codTema)
		VALUES(1005, 312, 'Ensaio sobre a Cegueira', '1995', 3);

select * from Livro;

--inserção na tabela AutorLivro
INSERT INTO AutorLivro(codigo, codAutor, CodLivro, tipoContribuicao)
		VALUES(201, 101, 1001, 'Principal');
INSERT INTO AutorLivro(codigo, codAutor, CodLivro, tipoContribuicao)
		VALUES(202, 102, 1002, 'Principal');
INSERT INTO AutorLivro(codigo, codAutor, CodLivro, tipoContribuicao)
		VALUES(203, 103, 1003, 'Principal');
INSERT INTO AutorLivro(codigo, codAutor, CodLivro, tipoContribuicao)
		VALUES(204, 103, 1001, 'Coautor');

select * from AutorLivro;

----------------------------------------------------------------------------------------

--- Exemplos de update
--atualizar o email do autor Machado de Assis

UPDATE Autor
SET email = 'machado@email.com'
WHERE codigo = 103