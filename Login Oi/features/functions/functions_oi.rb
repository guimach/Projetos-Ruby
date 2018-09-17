def fkmocompra_oi (login, las, mo)
    body =  HTTParty.get "#{DATA['url']['api']}/mo/api.php?from=#{login}&to=#{las}&text=#{mo}&date=2018-16-04"
    expect(body.response.code).to eql "200"    
    sleep(5)
    puts body
    end
    
    def cancelamento_oi (login, las)
    body = HTTParty.get "#{DATA['url']['api']}/mo/api_test.php?from=#{login}to=#{las}text=SAIR&date=2018-16-04"
    expect(body.response.code).to eql "200"
    end