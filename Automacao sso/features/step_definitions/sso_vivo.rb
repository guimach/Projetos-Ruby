#encoding:UTF-8

Dado("que eu como um qa irei coletar todos os dados que eu preciso para fazer login na vivo com os dados") do
    
 @login = Faker::Base.numerify ("31999894600")

  puts @login           
#   @email = Faker::Internet.email
#   puts @email
  @senha= "189898"
  
  
end

Quando("Eu conseguir ir para respectiva webview e verificar os nomes") do
#   comprar_vivo (@login)
#   sleep(15)
#   obter_senha
  puts @senha
  
 #VIVO PROTEGE
      sleep(5)
      visit:"#{DATA['protege']['url']}"
      protege = first('.txt-logo').text 
      expect(protege).to include "Vivo Protege"
      find('#entrar-passo-0').click
      sleep(1) 
      first('.btn.seletor').click
      find('#phone').set @login
      find('#entrar').click
      find('.form-control').set @senha
      find('#entrar').click  
      @fs_ok = find('.centerContainer').text 
      expect(@fs_ok).to include  "BEM-VINDO À FS."
    

#VFOL
    # visit:"#{DATA['vfol']['url']}"
    # vfol = find('.logo').text 
    # expect(vfol).to include "Vivo Filhos Online"
    # find('.button[data-choice="entrar"]').click
    # find('.button[data-partner="movel"]').click
    # sleep(2) 
    # find('#phone').set @login
    # find('.login').click
    # find('#password').set @senha
    # find('.login').click
    # find('#email').set @email
    # sleep(3)
    # find('a#bt-cadastrar-email.button').click
    # sleep(3)
    # find('a#bt-cadastrar-email.button').click
    # @fs_ok = find('.centerContainer').text 
    # expect(@fs_ok).to include  "BEM-VINDO À FS."
    
       
#VSYNC
  
    visit:"#{DATA['vivo_sync']['url']}"
    vsync = find('.txt-logo').text
    expect(vsync).to include "Vivo Sync"
    find('#entrar-passo-0').click
    find('.btn[data-conta="movel"]').click
    find('#phone').set @login
    find('#entrar').click
    sleep(2)
    find('.form-control').set @senha
    find('#entrar').click
    @fs_ok = find('.centerContainer').text 
    expect(@fs_ok).to include  "BEM-VINDO À FS."
    
#wifi-Seguro
 
    visit:"#{DATA['wi-fi']['url']}"
    find('#entrar-passo-0').click
    find('.btn-lg[data-conta="movel"]').click
    sleep(2) 
    find('#phone').set @login
    sleep(2)
    find('#entrar').click
    @fs_ok = find('.centerContainer').text 
    expect(@fs_ok).to include  "BEM-VINDO À FS."
end

  

Então("irei realizar os logins e assegurar que tudo deverá ocorrer de momo satisfatório se algo der errado , alertar os envolvidos") do
     
    #cancelar_vivo

    #consulta_canc
    
end
