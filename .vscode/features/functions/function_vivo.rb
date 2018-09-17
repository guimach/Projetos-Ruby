#encodinf:utf-8

def comprar_vivo (login)
  visit:"#{DATA['comprar_vivo']['url']}/mo/movile.php"
  find('[name="telefone"]').set @login
  find('[name="servico"]').set "881"
  find('[name="texto"]').set "3"
  find('[name="confirmado"]').set "1"
  find('[type="submit"]').click 
end

def obter_senha
    mt = HTTParty.get("#{DATA['obter_senha']['url']}/historico_sms.php?msisdn=#{@login}&quantidade=2")    
    cont = mt.to_s.index('Senha')
    @senha = mt[cont+7..cont+11]
    puts @senha
    end


def cancelar_vivo
  ct = HTTParty.get ("#{DATA['cancelamento']['url']}/callback/cancelar.php?telefone=#{@login}&servico=000&texto=000&confirmado=1&dt_envio=1&msisdn=#{@login}&serviceId=0100979500&productId=0055008254&updateType=3&operationTime=20171019155530&subscriptionValidTime=20171118155530&subscriptionAddtionalInfo=&previousTransactionResult=0")
  expect(ct.response.code).to eql "200"
  ct
end


def consulta_canc
  verify = HTTParty.get("#{DATA['consulta_cancelamento']['url']}/historico_sms.php?msisdn=#{@login}&quantidade=2")
  expect(verify.response.code).to eql "200"
 verify
end