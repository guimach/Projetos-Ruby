#encodinf:utf-8
Dado("Que eu como Qa, preciso validar a Funcionalidade login e senha com vasta cobertura e incluindo mensagens login com sucesso ou não e o comando") do
    puts "carregamento de dados."
 end


Quando("Eu tento fazer o {string} e {string} de diversas maneiras validar {string} com varios {string} e {string} em todos {string}") do |login, senha, mensagens, comandos, pacotes, las,|
@login = login
@senha = senha
@las = las
@mo = comandos
@pacs = pacotes
    fkmocompra_oi(@login, @las, @mo)
    logar = Login.new
    logar.load
@text = logar.texto_home
    expect(@text).to include "OI SEGURANÇA"
    logar.login_page(@login, @senha)
    sleep(2)
    expect(page).to have_content mensagens
   
   end

 Então("Valido todos os retornos e respostas referentes ao login") do
    for sair in 1..2 do
    cancelamento_oi(@login, @senha)
    end

end