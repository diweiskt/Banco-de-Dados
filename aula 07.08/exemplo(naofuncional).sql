Tema(#codigo,descricao)
Livro(#isbn,qtdPaginas,titulos,anoPublicacao,@codTema)
    codTema Referencia Tema(codigo)

Pais(#sigla,nome)
Autor(#codigo,nome,dataNasc,email,@siglaPais)
    siglaPais Referencia Pais(sigla)

livroAutor(#codigo,tipoContribuicao,@codAutor,@codLivro)
    codAutor Referencia Autor(codigo)
    codLivro Referencia Livro(isbn)