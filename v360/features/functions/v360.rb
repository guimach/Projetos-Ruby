def msisdn
msisdn = Faker::Base.numerify("1199995####")
puts msisdn
msisdn
end

class Proteges <SitePrism::Page 
    set_url "#{DATA['url']['site']}/interfaces/360/?debug=#{msisdn}"
    
    element :protege_voce, 'html body.body div#conteudo_principal div#conteudo.conteudo div div#el_9.container div.box a div.bt_comprar'
    element :protege_voce_mais, '#el_160'
    element :protege, '#el_114' 
    element :protege_mais, '#el_115' 
    element :protege_familia, '#el_247'
    element :corrigir, '[onclick="corrigirEmail()"]'
    element :cadastrar_email, '#email_1'
    element :confirm_email, '#email_2' 
    element :comprar,:xpath, '//*[@id="confirmarEmail"]/div/a[1]'
    element :poupup, '#notificacao'
    element :valida_p_v, '#el_9'
    

    def compra_p_v(email,protege_voce)
        self.protege_voce.click
        self.corrigir.click
        self.cadastrar_email.set email
        self.confirm_email.set email
        self.comprar.click
        text = self.poupup.text 
        compra_p_v
        sleep(5)
        end

    def compras_p_v_m(email,protege_voce_mais)
        self.protege_voce_mais.click
        self.corrigir.click
        self.cadastrar_email.set email
        self.confirm_email.set email
        self.comprar.click
        text = self.poupup.text 
        compras_p_v_m
        sleep(5)
        end

    def compras_p(email,protege)
        self.protege.click
        self.corrigir.click
        self.cadastrar_email.set email
        self.confirm_email.set email
        self.comprar.click
        text = self.poupup.text 
        compras_p
        sleep(5)
        end

        
    def compras_p_m(email,protege_mais)
        self.protege_mais.click
        self.corrigir.click
        self.cadastrar_email.set email
        self.confirm_email.set email
        self.comprar.click
        text = self.poupup.text 
        compras_p_m
        sleep(5)
        end
   
    def compras_p_f(email,protege_familia)
        self.protege_familia.click
        self.corrigir.click
        self.cadastrar_email.set email
        self.confirm_email.set email
        self.comprar.click
        text = self.poupup.text 
        compras_p_f
        sleep(5)
        end
    end

    def duplo_optin(msisdn)
        HTTParty.get("#{DATA['url']['site']}/mo/movile.php?telefone=#{@msisdn}&servico=881&texto=sim&confirmado=1&dt_envio=1", :verify => false) 
        duplo_optin
    end