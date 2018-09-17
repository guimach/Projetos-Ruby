#encoding:utf-8

Dado("que eu como QA possuo uma tabela com todos produtos da tabela {string} que se enquadram no POM e suas {string} e um Service ID que não pode ser repedido.") do |service_id, palavras_chave|
  puts @msisdn = Faker::Base.numerify('109514#####')
  @subscription_id = Faker::Base.numerify('######testesgui#######')
  @time = Time.now #=> "2015/12/08 10:30:00 -0200"
  @service_id = service_id
  @palavras_chave = palavras_chave

end

Quando("eu reunir as informações necessárias irei executar as compras do POM") do
  compra = compra(@service_id, @palavras_chave, @msisdn, @subscription_id, @time)
  expect(compra.response.code).to eql "200"
  expect(compra.response.body).to include  "OK"
  puts compra
  puts @time
  puts @service_id
  puts @palavras_chave
  puts @msisdn
  puts @subscription_id
  
  
  consulta_funambol = consulta_funambol(@msisdn)
  expect(consulta_funambol.response.code).to eql "200"
  expect(consulta_funambol.response.body).to include "true"
  expect(consulta_funambol.response.body).to include  @msisdn
  

  
  # #consulta_kasperky(msisdn)    
  # expect(consulta_vpn.response.body).to include @msisdn
  # expect(consulta_vpn.response.body).to include "OK"

  # consulta_vpn = consulta_vpn(@msisdn)
  # expect(consulta_vpn.response.code).to eql "200"
  # expect(consulta_vpn.response.body).to include @msisdn
  # expect(consulta_vpn.response.body).to include "OK"  

  # consulta_firebase = consulta_firebase(@msisdn)
  # expect(consulta_firebase.response.code).to eql "200"
  # expect(consulta_firebase.resoponse.body).to include "OK"
  # expect(consulta_firebase.resoponse.body).to include "+55#{@msisdn}"    


end

Então("será exibida a mensagem POM contratado com sucesso.") do
  puts
end

Então("farei o cancelamento do mesmo que deverá exibir a mensagem POM cancelado com sucesso.") do
  # cancelamento = cancelamento(@service_id, @palavras_chave, @msisdn, @subscription_id, @time)
  # expect(cancelamento.response.code).to eql "200"
  # expect(cancelamento.response.body).to include "Chave Cancelada"
  # expect(cancelamento.response.body).to include "OK"


  puts 
end


