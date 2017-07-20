Dado(/^que acesse a página de Login$/) do
  @login.load
end

Dado(/^tenho um usuário com as informações$/) do |table|
  @user = table.rows_hash['user']
  @password = table.rows_hash['password']
end

Dado(/^que realize o login$/) do
  @login.realiza_login(@user, @password)
end

Então(/^devo ver a "([^"]*)" de login com sucesso$/) do |msg|
  expect(@login.message_txt.text).to include(msg)
end

Quando(/^realizar o logout$/) do
  @logout.logout_btn.click
end

Então(/^devo ver a "([^"]*)" de logout com sucesso$/) do |msg|
  expect(@logout.message_txt.text).to include(msg)
end