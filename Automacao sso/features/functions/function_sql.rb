	def query

select = "SELECT cl.id, id_estrangeiro, cl.serial, cl.email, cl.cpf, cl.criado, ch.extref, ch.produto, ch.data_compra, pr.nome_amigavel, pr.licencas, pr.dias_tarifacao, pr.valor
FROM clientes AS cl
INNER JOIN chaves AS ch
ON cl.id = ch.cliente
INNER JOIN produtos_parceiros AS pr
ON ch.produto = pr.id
WHERE ch.cliente = (SELECT id FROM clientes WHERE id_estrangeiro = '#{@msisdn}') AND ch.data_cancelamento IS NULL;"
  select
end


def mysql

    client = Mysql2::Client.new(:host => "az-homol-db.fsvas.com", :username => "qa_auto", :password => "B]*PgEa*!_xJ|~!%AE6:Q=az3p5f]PlE", :database => "oi_prod", :symbolize_keys => true)
    results = client.query(query, :as => :array)
    results
end
