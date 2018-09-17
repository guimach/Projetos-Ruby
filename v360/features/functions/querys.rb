class Query
    def mysql (select)
        client = Mysql2::Client.new(:host => "az-homol-db.fsvas.com", :username => "qa_auto", :password => "B]*PgEa*!_xJ|~!%AE6:Q=az3p5f]PlE", :database => "base_vivo")
        result = client.query(select)
        result
    end
    
    def signature(msisdn)
        select = "SELECT clientes.id, chaves.id, pp.id FROM clientes 
        JOIN chaves ON chaves.cliente = clientes.id
        JOIN produtos_parceiros pp ON pp.id = chaves.produto
        WHERE clientes.id_estrangeiro = '#{msisdn}'
        AND chaves.data_cancelamento IS NULL"
       result = mysql(select)
       result
    end

    def sms(msisdn)
        env = DATA['env'] 
        if env.eql?('homol')
        select = "SELECT *
                  FROM requests_movile  
                  WHERE fone = '#{msisdn}'
                  ORDER BY id DESC  LIMIT 2;"
                  result = mysql(select)
                  result.each do |row|
                    @msg= row['mensagem']
                    end
                   @msg
        elsif env.eql?('prod')
                @mt = HTTParty.get("#{DATA['url']['api']}/historico_sms.php?msisdn=#{msisdn}&quantidade=2",:verify => false)
                @mt
        end          
    end
end