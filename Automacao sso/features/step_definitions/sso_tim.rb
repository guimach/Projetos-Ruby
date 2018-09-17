# # #encoding:utf-8


# Dado("Que eu preciso testar o sso e tenho os services que preciso e irei usar login e senha para fazer compra com eles.") do
#       @login = "11983051050" #Faker::Base.numerify ("1099992####")
#       @senha = "123456" #metod
#       Faker::Base.numerify ("########-####-####-####-############")
#       subscriptionid = Faker::Base.numerify ("########-####-####-####-############")
#       operatortxid = Faker::Base.numerify ("11804####")
#       comprar_tim
#       puts subscriptionid
#       puts txid
#       puts operatortxid
#       expect(@comprar_pom.response.code).to eql "200"
#       end

#  Quando("Eu tiver com o login e senha irei logar em todas as plataformas e assegurar que as mesmas estão ok") do
   
#  #timkids
#    sleep(10)
#    visit:""
#    timkids = first('.logo').text 
#    expect(timkids).to include "TIM Kids criar"
#    sleep(2)
#    find('.form-control').set @login
#    find('.bt-avancar').click
#    find('.form-control').set @senha
#   #  @fs_ok = find('.centerContainer').text 
#   #  expect(@fs_ok).to include  "BEM-VINDO À FS."


#     # Seguranca Online

#   visit:""
#   timseguranca =find('.webview-wifi-corpo').text 
#   expect(timseguranca).to eql "TIM PROTECT SEGURANÇA DIGITE SEU NÚMERO DE CELULAR :"
#   find('#celular-wifi').set @login
#   find('#button-submit').click
#   # @fs_ok = find('.centerContainer').text 
#   # expect(@fs_ok).to include  "BEM-VINDO À FS."
#   # TIM protect filhos
  
#   visit:""
#   timfilhos = first('.col-md-6').text 
#   expect(timfilhos).to eql  "© 2009-2017 Todos os direitos reservados."
#   find('#msisdn').set @login
#   find('.bt-protect-filhos').click
#   find('#password[name="password"]').set @senha
#   find('.bt-protect-filhos').click
#   # @fs_ok = find('.centerContainer').text 
#   # expect(@fs_ok).to include  "BEM-VINDO À FS." 
# end
  
# Então("Irei entrar no Kibana e assegurar que todos os Id's foram gerados.") do
#   puts @login
#   puts @senha
 

#  end