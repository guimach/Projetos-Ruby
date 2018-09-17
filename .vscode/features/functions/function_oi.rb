def compra_oi (msisdn, la, compra)
body =  HTTParty.get "#{DATA['compra_oi']['url']}/mo/api_test.php?from=#{msisdn}to=#{la}text=#{compra}&date=2017-11-09"
expect(body.response.code).to eql "200"
end

def cancelamento_oi(msisdn, la, cancelamento)
body = HTTParty.get  "#{DATA['cancelamento_oi']['url']}/mo/api_test.php?from=#{msisdn}to=#{la}text=#{cancelamento}&date=2017-11-09"
expect(body.response.code).to eql "200"
end

