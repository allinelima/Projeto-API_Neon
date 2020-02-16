#encoding: utf-8

Quando("solicito uma requisição para serviço de filmes") do
  @result = Servico.get('/films')
end

Então("devo obter o código de resposta {string}") do |status|
  expect(@result.response.code).to eql status
end

Então("vejo uma lista contendo os títulos dos filmes") do
  movies_array = @result.parsed_response['results'].inject([]) { |array, movie| array << movie['title']; array }
  puts movies_array
end