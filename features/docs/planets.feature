#language: pt

Funcionalidade: Consultar Planetas

@planeta_1
Cenario: Obter uma lista de Planetas
    Quando solicito uma requisição para serviço de planetas
    Então devo obter o código http "200"
        E vejo uma lista contendo os nomes dos planetas

@planeta_2
Cenario: Consultar um planeta inexistente
    Quando solicito uma requisição para serviço de planetas
    E obtenho a quantidade total de planetas
    Então devo consultar por um planeta com id superior ao total
        E devo obter o código http "404"
        E com mensagem de retorno "Not found"