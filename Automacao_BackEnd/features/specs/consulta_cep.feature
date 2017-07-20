  #encoding: utf-8
  #language: pt
  
  Funcionalidade: Consultar CEP via API
  Eu quero acessar a API de Consulta CEP dos Correios
  Para que eu possa validar se o serviço retorna as informações corretas
  
  @a
  Cenário: Busca por CEP Válido 
  Quando faço uma busca de cep "08553330" pelo o serviço de BuscaCep
  Então o código de resposta deve ser "200"
  E o serviço deve retornar as informações do CEP cadastrado 
      | cep            | 08553330       | 
      | tipologradouro | Rua            | 
      | logradouro     | Queluz         | 
      | bairro         | Jardim Julieta | 
      | cidade         | Poá            | 
      | estado         | SP             | 
  @b
  Cenário: Busca por CEP inválido
  Quando faço uma busca de cep "00000000" pelo o serviço de BuscaCep
  Então o código de resposta deve ser "404"
  E o serviço deve retornar a resposta "Endereço não encontrado!"
  
  