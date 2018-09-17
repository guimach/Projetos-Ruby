#encoding:utf-8

Dado("que eu tenho contas no hero e preciso logar em todos os apps que meu plano  comportar") do
    @msisdn = Faker::Base.numerify('11951480432')  
    compra_fast(@msisdn)
 end

Quando("que iniciarei os logins e farei as validações necessárias em cada webview") do
     
#  #Hero Wi-fi
      visit:"#{DATA['wi_fi_hero']['url']}"
      sleep(3)
      find('#telefone').set @msisdn
      find('#bt-confirmacao-telefone').click
      @fs_ok = find('.centerContainer').text 
      expect(@fs_ok).to include  "BEM-VINDO À FS."
      # validar_kibana

#Área do cliente.
  
    #   visit:"#{DATA['area_cliente_hero']['url']}"
    #   find('#telefone').set @msisdn  
    #   find('#bt-confirmacao-telefone').click
    #   sleep(3)
    #   pin = pincode_hero(@msisdn)
    #   puts pin
    #   find('.mascara-pincode').set pin
    #   find('#bt-confirmacao-pincode').click
    #   sleep(2)
    #   find_button('Confirmar').click
    #   @fs_ok = find('.centerContainer').text 
    #   expect(@fs_ok).to include  "BEM-VINDO À FS."
  
      
#Cloud

    #   visit:"#{DATA['cloud_hero']['url']}"
    #   find('#telefone').set @msisdn
    #   find('#bt-confirmacao-telefone').click
    #   sleep(3)
    #   pin2 = pincode_hero(@msisdn)
    #   puts pin2
    #   find('#pincode').set pin2
    #   find('.bt-confirmacao-pincode').click
    #   sleep(2)
    #   @fs_ok = find('.centerContainer').text 
    #   expect(@fs_ok).to include  "BEM-VINDO À FS."
    #  validar_kibana
    
        
#Segurança By Hero (Kaspersky)

    visit:"#{DATA['segurança_hero']['url']}"
    find('#telefone').set @msisdn
    find('#bt-confirmacao-telefone').click
    expect(@fs_ok).to include  "BEM-VINDO À FS."
    # #validar_kibana

#Safekids

    # visit:"#{DATA['safe_kids']['url']}"
    # find('#telefone').set @msisdn
    # find('#bt-confirmacao-telefone').click
    # sleep(3)
    # pin3 = pincode_hero(@msisdn)
    # puts pin3
    # find('#pincode').set pin3
    # find('#bt-confirmacao-pincode').click
    # sleep(2)
    # @fs_ok = find('.centerContainer').text 
    # expect(@fs_ok).to include  "BEM-VINDO À FS."

end
  
   Então("irei checar no kibana de os logins estão sendo efetivados com sucesso.") do
    
    #validar_kibana
 end
   