#language:pt

@ssohero
Funcionalidade: testes no SSO Hero
    O Hero, é o principal produto da empresa por ser produto próprio ele tem uma críticidade de maior nível perante aos outros parceiros
    Automaticamente o que mais tem clientes no mercado publico 
    O maior nível de validação deve ser feito para os testes do HERO.
    O Hero trabalha com os parceiros FNAC, Fastshop, Ricardo Eletro, e alguns outros parceiros
    A função deste trabalho é garantir a cobertura de testes referente aos logins que realizamos em nossas plataformas 
    E Assegurar que os mesmos não quebren ou não sinalizem alguma instabilidade que possa vir no dia-dia
    As Validações serão constituidas por (Compra, Cancelamento, Logins, Logins Inválidos ) e em uma release 2 uma validação de Quotas referentes aos serviços
    e uma validação de entrega de SMS nos casos de Reset de senha.
    Essa é a proposta da devida Cobertura que o time de Q.A pode oferecer para que o SSO possa ter a cobertura necessária para validação pós deploy.

 Cenário: logins no Hero

Dado que eu tenho contas no hero e preciso logar em todos os apps que meu plano  comportar
Quando que iniciarei os logins e farei as validações necessárias em cada webview
Então irei checar no kibana de os logins estão sendo efetivados com sucesso.