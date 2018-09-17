def compra_oi (msisdn, la, compra)
body =  HTTParty.get "#{DATA['compra_oi']['url']}from=#{msisdn}to=#{la}text=#{compra}&date=2017-11-09"
expect(body.response.code).to eql "200"

body2 = HTTParty.get "#{DATA['compra_oi']['url']}from=#{msisdn}to=#{la}text=SIM&date=2017-11-09"
expect(body.response.code).to eql "200"

end

def cancelamento_oi(msisdn, la, cancelamento)
body = HTTParty.get  "#{DATA['cancelamento_oi']['url']}from=#{msisdn}to=#{la}text=#{cancelamento}&date=2017-11-09"
expect(body.response.code).to eql "200"
end

