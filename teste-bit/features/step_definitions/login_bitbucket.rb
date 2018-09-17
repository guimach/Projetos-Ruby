#encoding:utf-8
Dado("irei logar no bit") do
  @user = "stephan.higuti"
  @pass = "spring2029#"  
  visit:"https://bitbucket.whitelabel.com.br/login" 
  find('[name="j_username"]').set @user
  find('#j_password').set @pass
  find('#submit').click
end

Dado("que estou logado") do
puts @user

end

Quando("entrar com {string}") do |contas|
visit:"https://bitbucket.whitelabel.com.br/projects/AR/repos?create"
find('#name').set contas
find('#submit').click
end

Então("implantar") do
 sucesso = find('#name-error-message-0').text
 expect(sucesso).to include "This repository URL is already taken by"
end