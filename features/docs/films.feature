#language: pt

Funcionalidade: Consultar Filmes

Cenario: Obter uma lista de Filmes
    Quando solicito uma requisição para serviço de filmes
    Então devo obter o código de resposta "200"
        E vejo uma lista contendo os títulos dos filmes