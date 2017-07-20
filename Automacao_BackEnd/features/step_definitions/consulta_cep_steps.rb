#encoding: utf-8
#language: pt


Quando(/^faço uma busca de cep "([^"]*)" pelo o serviço de BuscaCep$/) do |cep|
  @cep = cep
  @result = HTTParty.get("http://correiosapi.apphb.com/cep/#{cep}" )
end


Então(/^o código de resposta deve ser "([^"]*)"$/) do |status_code|
  expect(@result.response.code).to eql status_code
end

Então(/^o serviço deve retornar as informações do CEP cadastrado$/) do |table|
  @tipo = table.rows_hash['tipologradouro']
  @logradouro = table.rows_hash['logradouro']
  @bairro = table.rows_hash['bairro']
  @cidade = table.rows_hash['cidade']
  @estado = table.rows_hash['estado'] 
 
  expect(@result.parsed_response['cep']).to eql @cep
  expect(@result.parsed_response['tipoDeLogradouro']).to eql @tipo
  expect(@result.parsed_response['logradouro']).to eql @logradouro
  expect(@result.parsed_response['bairro']).to eql  @bairro
  expect(@result.parsed_response['cidade']).to eql  @cidade
  expect(@result.parsed_response['estado']).to eql @estado 
end

Então(/^o serviço deve retornar a resposta "([^"]*)"$/) do |msg|
  expect(@result.parsed_response['message']).to eql msg
end
