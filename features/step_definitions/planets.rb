#encoding: utf-8

Quando("solicito uma requisição para serviço de planetas") do
  @result = Servico.get('/planets')
end

Então("devo obter o código http {string}") do |status|
  expect(@result.response.code).to eql status
end

Então("vejo uma lista contendo os nomes dos planetas") do
  planets_array = @result.parsed_response['results'].inject([]) { |array, planet| array << planet['name']; array }
  puts planets_array
end

Quando("obtenho a quantidade total de planetas") do
  @planet_count = @result.parsed_response['count']
end

Então("devo consultar por um planeta com id superior ao total") do
  @result = Servico.get("/planets/#{@planet_count+rand(1..10)}")
end

Então("com mensagem de retorno {string}") do |message|
  expect(@result.parsed_response['detail']).to eql message
end