
def comprar_tim (txid, subscriptionid, operatortxid)
 body = 
 {
	"SubscriptionNotificationRequest": {
		"txId": "#{txid}",
		"serviceId": "TIM_KIDS_CRIAR",
		"msisdn": "#{@login}",
		"subscriptionId": "#{subscriptionid}",  
		"origin": "OPERATOR",
		"channel": "MIGRATION",
		"operatorTxId": "#{operatortxid}"
}
}

comprar_pom = HTTParty.post("http://tim-back-homol.whitelabel.com.br/api/notification-hub.php",
:body=> body.to_json,
:header=> { "Content-Type" => 'application/json'})
comprar_tim
end