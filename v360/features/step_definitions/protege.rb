#encodinf:utf-8

    
    Dado("Eu como um Q.A preciso validar todo vivo protege e seus principais planos, portanto para fazer as compras , tenho os dados abaixo.") do
         @msisdn = msisdn
         @email = Faker::Internet.email
         puts @email 
             end
    
        Quando("Eu estiver com todas as informações necessárias e <planos> irei fazer as compras do meu Vivo Proge nos planos.") do
        loadpage= Proteges.new
        loadpage.load
        loadpage.compra_p_v(@email, @planos)
        expect(protege_voce).to include "Combinação de 3 serviços: Vivo Segurança Online 1 licença + Vivo Sync 32GB + Vivo Resolve"
        loadpage.compra_p_v_m(@email, @planos)
        expect(protege_voce_mais).to include "Combinação de 2 serviços: Vivo Segurança Online 3 licenças + Vivo Sync 32GB"
        loadpage.compra_p(@email, @planos)
        expect(protege).to include "Combinação de 5 serviços: Vivo Segurança Online + Vivo WiFi Seguro + Vivo Filhos Online com 3 licenças cada + Vivo Sync 128 GB + Vivo Resolve"
        loadpage.compra_p_v_m(@email, @planos)
        expect(protege_mais).to include "Combinação de 5 serviços: Vivo Segurança Online + Vivo WiFi Seguro + Vivo Filhos Online com 5 licenças cada + Vivo Sync 128 GB + Vivo Resolve"
        loadpage.compra_p_f(@email, @planos)
        expect(protege_familia).to include "Combinação de 5 serviços: Vivo Segurança Online + Vivo WiFi Seguro + Vivo Filhos Online com 5 licenças cada + Vivo Sync Ilimitado + Vivo Resolve"
        
    end
    
    Então("Irei Validar se esses planos  realmente estão certos e darei meu cenário como validado se sim.") do
       expect(text).to include "Foi enviado ao cliente um SMS para confirmação desta compra. Por favor, aguarde."
       consulta= Query.new
      sms1 = consulta.sms(@msisdn)
       expect(sms1).to include "responda SIM"
       puts @msg
      duplo_optin(@msisdn)
      sms2 = consulta.sms(@msisdn)
      expect(response.mt.body).to  include "Bem Vindo"  
    end