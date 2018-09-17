#encoding:utf-8

Dado("eu tiver com números msisdn eu irei contratar compra e cancelamento pelo la proteção completa e irei fazer o login e a senha nos aplicativos") do
    
   @msisdn = Faker::Base.numerify("11962523794")
   @senha = "#{@msisdn[2..11]}"
   @compra = "2"
   @cancelamento = "sair"
   @la = "3990"
    puts @msisdn
    puts @senha
    
    # compra_oi(@msisdn, @la, @compra)
    
    
  end
  
 Quando(/^então vou validar se os planos que contratei estão logando\.$/) do
    sleep(15)

# OI  MCAFEE
     
     visit:"#{DATA['oi_seguranca']['url']}"
     protecao_comp = first('.text-center').text 
     expect(protecao_comp).to include "Para ativar o Proteção Completa, digite abaixo o número de seu celular Oi."
     find('#numero').set @msisdn
     first('.btn-block').click
     sleep(2)
     pincode = Faker::Base.numerify('123###')
     find('#codigo_mcafee').set pincode
     find('#email_mcafee').click 
     email = Faker::Internet.email
     find('#email_mcafee').set email
     find('.fa-check').click
     find('#etapa2').click
     puts pincode 
     puts email 
     @fs_ok = find('.centerContainer').text 
     expect(@fs_ok).to include  "BEM-VINDO À FS."

#Oi Hotsite
    visit:"#{DATA['oi_hotsite']['url']}"
    protecao_comp = first('.navbar-brand').text 
    expect(protecao_comp).to include "OI SEGURANÇA"
    find('.icon-user').click
    find('#numero').set @msisdn
    find('#senha').set @senha
    find('.btn[type="submit"]').click
    hotsite = find('.loadpage').text
    expect(hotsite).to include "OI SEGURANÇA"

#oi Wi Fi
    visit:"#{DATA['oi_wifi']['url']}"
    find('#login-input').set @msisdn
    find('.btnEntrar').click
    @fs_ok = find('.centerContainer').text 
    expect(@fs_ok).to include  "BEM-VINDO À FS."
end  
    
  Então(/^irei fazer as validações necessárias para ganrantir  que meu teste foi satisfatório\.$/) do          
  
    # for sair in 1..2 do
    # cancelamento_oi(@msisdn, @la, @cancelamento)
    # end
     
end

