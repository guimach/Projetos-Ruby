def compra(service_id, palavras_chave, msisdn, subscription_id, time)
   
    body = {
        "SubscriptionNotificationRequest": {
          "txId": "123",
          "serviceId": "#{service_id}",
          "msisdn": "#{msisdn}",
          "subscriptionId": "#{subscription_id}",
          "subscriberMessage": "#{palavras_chave}",
          "origin": "aff",
          "expiryDate": "#{time}"
        }
      }


        HTTParty.post("#{DATA['end_point']['api']}",
        :body => body.to_json,
        :header => {"Content-Type" => 'application/json' })
         

end



# def cancelamento(service_id, palavras_chave, msisdn, subscription_id, time)
   
#     body = {
#         "UnsubscriptionNotificationRequest": {
#             "txId": "123",
#             "serviceId": "#{service_id}",
#             "msisdn": "#{msisdn}",
#             "subscriptionId": "#{subscription_id}",
#             "subscriberMessage": "#{palavras_chave}",
#             "origin": "aff",
#             "expiryDate": "#{time}"
#           }
#         }
  


#          HTTParty.post("#{DATA['end_point']['api']}/api/notification-hub.php",
#         :body => body.to_json,
#         :header => {"Content-Type" => 'application/json' })

# end

def consulta_funambol(msisdn)

    HTTParty.get("#{DATA['end_point']['url']}/v2/funambol/tim/provisioning/55#{msisdn}") 
        
        end 

def consulta_kasperky(msisdn)
        
        HTTParty.get("#{DATA['end_point']['url']}/v2/kaspersky/tim/provisioning/#{msisdn}")
            
            end

def consulta_fs_vendor(msisdn) 

    HTTParty.get("#{DATA['end_point']['url']}/v2/fsvendor/hero/provisioning/#{xtref}")

        end 

def consulta_fs_vpn(msisdn)

    HTTParty.get("#{DATA['end_point']['url']}/v2/fsvpn/tim/roles/?page=#{msisdn}")

    end


def consulta_firebase(msisdn)

    HTTParty.get("#{DATA['end_point']['url']}/v2/firebase/tim/user/55#{msisdn}")

    end
