  #encoding: utf-8
  #language: pt
  
  Funcionalidade: Validar Login/Logout
  Eu como usuário
  Quero acessar 
  Para que eu possa ter acesso a página

  Contexto: Acessar página de login
  Dado que acesse a página de Login
  E tenho um usuário com as informações
       | user        |  tomsmith            |
       | password    | SuperSecretPassword! |
  
  @login
  Esquema do Cenário: Realizar Login
  Dado que realize o login
  Então devo ver a <message> de login com sucesso
  Exemplos: 
      | message                          | 
      | "You logged into a secure area!" | 
      
 @logout
 Esquema do Cenário: Realizar logout
 Dado que realize o login
 Quando realizar o logout
 Então devo ver a <message> de logout com sucesso
  Exemplos: 
      | message                               |
      | "You logged out of the secure area!"  | 


