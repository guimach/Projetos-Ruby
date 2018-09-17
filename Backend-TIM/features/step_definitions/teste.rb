

# def solicita_pin
   
#     body = {
#         "msisdn": "11951480432"
#         }
#          response = HTTParty.post("https://phone-authentication-homol.whitelabel.com.br/phone-auth/send",
#         :body => body.to_json,
#         :headers => {"Content-Type" => 'application/json', "Authorization" => "Bearer 68af434e-3d08-46d4-b031-d56cbb31fde1"  
#          })
         
#     response
# end

# response = solicita_pin
# data = response.parsed_response["data"]["transaction_id"]
# puts data

# # response = solicita_pin.to_a.sort

# # teste = response.[0][1]

# # puts teste



# def captura_pin
# oi = HTTParty.get("https://phone-authentication-homol.whitelabel.com.br/phone-auth/extra/get-tracker-info?transaction_id=35353131393030383532343136.312e3632313134332e70742e313533333035303939302e383633" ,
  
# :headers => {"Content-Type" => 'application/json', "Authorization" => "Bearer 68af434e-3d08-46d4-b031-d56cbb31fde1"  
# })

# oi
# end 

# response = captura_pin
# puts response.class
# data = response.parsed_response["data"]["details"]["pincode"]
# puts data

# response = solicita_pin.to_a.sort

# teste = response.[0][1]

# puts teste