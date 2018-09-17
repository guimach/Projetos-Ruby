#encoding:utf-8
def validar_kibana
 pesquisa = HTTParty.get("https://search-fs-es-qb5gcsthjgz3uvjfncalwfmcpa.us-east-1.es.amazonaws.com/sso-*/_search?q=#{@cpf}#{@msisdn}#{@login}",:verify => false)
 status_code = JSON.parse(status_code.body, object_class: OpenStruct)
 expect(status_code).to eql "200"
   validar_kibana
end  
