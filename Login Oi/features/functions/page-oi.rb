
class Login < SitePrism::Page 
    set_url "#{DATA['url']['site']}"
    element :home, '.navbar-brand'
    element :body, '.banner-content'
    element :footer, '.clearfix'
    element :loginbox, '.box-login'
    element :logon, '[placeholder="Digite seu número Oi"]'
    element :password, '#senha'
    element :btn_login, '.bt-login'
    element :esqueci, '.lesqueci'
    element :esqueci2, '[placeholder="Digite seu número Oi"]'
    element :voltar, '.lesqueci[a href="voltar"/a]'
    element :close, '.fancybox-close'
    element :area_logada, '.conta-conteudo'
    element :valida_plano, '.col-xs-12'
 def texto_home
        text = self.home.text
        text
 end

 def login_page (login, senha)
    self.loginbox.click
    self.logon.set  login
    self.password.set senha
    self.btn_login.click
end

def valida_plano(pacs) 
   plano = self.valida_plano.text
   plano
end

end