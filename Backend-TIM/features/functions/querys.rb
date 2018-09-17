# class Query
#     def mysql (select)
#         client = Mysql2::Client.new(:host => "az-homol-db.fsvas.com", :username => "qa_auto", :password => "B]*PgEa*!_xJ|~!%AE6:Q=az3p5f]PlE", :database => "base_tim")
#         result = client.query(select)
#         result
#     end
    
#     def signature(msisdn)
#         select = "select * from clientes inner join chaves on clientes.id = chaves.cliente 
#         inner join produtos_parceiros on chaves.produto = produtos_parceiros.id
#         where clientes.id_estrangeiro = #{msisdn} and data_cancelamento is null;"
#        result = mysql(select)
#        result
#     end

#     def consulta_xtref(msisdn)
#         env = DATA['env'] 
#         if env.eql?('homol')
#         select = "select * from clientes inner join chaves on clientes.id = chaves.cliente 
#         inner join produtos_parceiros on chaves.produto = produtos_parceiros.id
#         where clientes.id_estrangeiro = #{msisdn} and data_cancelamento is null;"
                  
#         result = mysql(select)
#         result.each do |row|
#         xtref= row['xtref']
#                     end

#                    xtref
                   
#         elsif env.eql?('prod')
#                 # @mt = HTTParty.get("#{DATA['url']['api']}/historico_sms.php?msisdn=#{msisdn}&quantidade=2",:verify => false)
#                 # @mt
#         end          
#     end
# end