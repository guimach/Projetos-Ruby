def pincode_hero (msisdn) 
    response= HTTParty.get("#{DATA['pincode_hero']['url']}/ws/qa/customer/index.php?msisdn=55#{msisdn}")
    
    
end

def compra_fast (msisdn)
    @login_loja = "guilherme.machado.nio"
    @senha_loja = "QaFs123@"
    visit:"#{DATA['compra_fast']['url']}"
    valida_page = find('.box-login').text
    expect(valida_page).to include "ASSISTENTE DE VENDAS"
    find('#usuario').set @login_loja
    find('#senha').set @senha_loja
    find('.btn-default').click
    valida_user = find('.user').text
    expect(valida_user).to eql "guilherme.machado.nio"
    cpf = Faker::CPF.cpf #=>"859.684.732-40"
    find('#busca').set cpf
    find('#busca').native.send_keys(:return)
    name = Faker::Name.name
    find('#nome').set name
    email = Faker::Internet.email
    find('#email').set email
    find('#confirma_email').set email
    Faker::CPF.numeric    #=> "32586104447" 
    find('#cpfcnpj').set cpf
    find('#celular').set msisdn
    find('.filter-option').click
    find("li", text: "HERO Plano Básico").click
    sleep(3)
    find('#btcadastrar').click
    sleep(2)
    find('.confirm[tabindex="1"]').click    
    puts msisdn
    puts cpf
    puts email
    puts name  
end