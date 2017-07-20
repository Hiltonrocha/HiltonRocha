Olá, meu nome é Hilton Rocha e desenvolvi essa pequena automação usando o framework Httparty. Abaixo segue as instruções de como preparar o ambiente para rodar a automação desde instalar Ruby até baixar o projeto da automação.

 Configurando o Ambiente no Windows:

1 - Instale o Ruby no Windows
  - baixe em: ​http://rubyinstaller.org/downloads/​. 
  - Executar o arquivo baixado e seguir as instruções clicando em ‘next’
  - Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’. 
  - No Console, digite o comando ​ruby –v​, der tudo certo você vai ver a versão instalada. 

2 - Instale o DEVkit
  - Baixe em: http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx. exe​.
  - Acesse o diretório C:\Ruby23-x64.
  - Crie uma pasta chamada ​devKit​ e coloque o arquivo baixado dentro dessa pasta.
  - Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
  -  No Console, digite os comandos:
     > cd C:\Ruby23-x64\devkit
     > ruby dk.rb init
     > ruby dk.rb install 

3 - Instalando o Bundler
  - No prompt de comando digite:
  > gem install bundler

  Rodando a Automação:

1 - Faça o clone do repositorio no Git:
  > git clone <url_do_repositorio>

2 - Instale as dependencias do projeto com o comando:
  > bundle init

3 - Para rodar os teste com o relatório html. Digite o comando:
  > cucumber -p report_html
  O report será gerado dentro da pasta /reports com o nome report.html

4 - Para rodar os teste com o relatório json. Digite o comando:
  > cucumber -p report_json
  O report será gerado dentro da pasta /reports com o nome report.json

  Muito Obrigado =)
