# Funcionalidade: Login do Vivo Sync no Firebase (Vivo Móvel)

# Vivo Sync com Firebase, que trata-se da nova metodologia de login da FS
# que já possui sua implementação no vivo protege e agora está indo para o Vivo Sync
# com a finalidade da mesma é logar com "Todos" os tipos de conta Vivo Sync, Incluindo "Fixo" e "Móvel"

# Cenário: Contratar o Produto Vivo Sync 32GB
# Dado que eu não tenha nenhum Vivo Sync, irei contratar o Plano 32GB
# Quando eu contratar o Vivo Sync Irei Fazer Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso.

# Cenário: Contratar o produto Vivo Sync 128GB
# Dado que eu não tenha nenhum Vivo Sync, irei contratar o Plano 128GB
# Quando eu contratar o Vivo Sync Irei Fazer Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso

# Cenário: Contratar o produto Vivo Sync Ilimitado
# Dado que eu não tenha nenhum Vivo Sync, irei contratar o Plano Ilimitado
# Quando eu contratar o Vivo Sync Irei Fazer Login no Firebase
# Então irei fazer a validação necessaria para confirmar que o login foi feito com sucesso

# Cenário: Contratar o Produto Protege você e logar  no Sync
# Dado que eu não tenha nenhum Vivo Sync, irei contratar o Plano Vivo Protege você
# Quando eu contratar o Vivo Sync Irei Fazer Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso

# Cenário: Contratar o Produto Protege Você Mais e logar  no Sync
# Dado que eu não tenha nenhum Vivo Sync, irei contratar o Plano Vivo Protege Você Mais
# Quando eu contratar o Vivo Sync Irei Fazer Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso

# Cenário: Contratar o Produto Protege Mais e logar  no Sync
# Dado que eu não tenha nenhum Vivo Sync, irei contratar o Plano Vivo Protege Mais
# Quando eu contratar o Vivo Sync Irei Fazer Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso

# Cenário: Contratar o Produto Protege Família e logar  no Sync
# Dado que eu não tenha nenhum Vivo Sync, irei contratar o Plano Vivo Protege Família
# Quando eu contratar o Vivo Sync Irei Fazer Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso


# Vivo Fixo

# Funcionalidade: Login do Vivo Sync no Firebase (Vivo Fixo)

# Vivo Sync com Firebase, que trata-se da nova metodologia de login da FS
# que já possui sua implementação no vivo protege e agora está indo para o Vivo Sync
# a finalidade da mesma é logar com "Todos" os tipos de conta Vivo Sync, Incluindo "Fixo" e "Móvel"

# Cenário: Contratar o plano Vivo Protege Light b2b
# Dado que eu não tenha nenhum Vivo Sync, irei contratar o Plano Vivo Protege Light B2B
# Quando eu Contratar o Vivo Protege B2b Irei Fazer Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso

# Cenário: Contratar o plano GVT Protege Você
# Dado que eu não tenha nenhum Vivo Sync Irei contratar o Plano GVT Protege Você
# Quando eu Contratar o GVT Protege Você Irei fazer o Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso

# Cenário: Contratar o plano GVT Protege Você +
# Dado que eu não tenha nenhum Vivo Sync Irei contratar o Plano GVT Protege Você +
# Quando eu Contratar o GVT Protege Você Irei fazer o Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso

# Cenário: Contratar o plano GVT Protege Família +
# Dado que eu não tenha nenhum Vivo Sync Irei contratar o Plano GVT Protege Família +
# Quando eu Contratar o GVT Protege Você Irei fazer o Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso

# Cenário: Contratar o plano GVT Protege Empresas
# Dado que eu não tenha nenhum Vivo Sync Irei contratar o Plano GVT Protege Empresas
# Quando eu Contratar o GVT Protege Você Irei fazer o Login no Firebase
# Então irei fazer a validação necessária para confirmar que o login foi feito com sucesso

# Cenário: Cadastrar e-mail GVT

# Dado que eu possua conta GVT vinculada apenas com meu cpf
# Quando eu clico em cadastrar meus dados e insiro meu e-mail, deverei receber meu código por e-mail com sucesso e seguir logar com sucesso.
# Então eu irei fazer as validações para verificar se a comunicação foi entregue com sucesso.


# Teste de Convivência


# Funcionalidade: Convivencia

# Levando-se em conta que muitos usuários possuem Planos Avulsos e mais de um Plano Vivo Sync , há uma necessidade de cobertura de testes
# para esse tipo de ativação portanto o Firebase precisa identificá-los e autenticá-los com sucesso.


# Cenário: Convivencia entre Sync Bundle e Sync Avulso
# Dado que eu tenha um Plano Bundle + Sync 32GB
# Quando eu tentar logar no Firebase com o mesmo , o login deve ser feito com sucesso
# Então Irei fazer as validações necessárias para assegurar que o mesmo logou corretamente.

# Dado que eu tenha um Plano Bundle + Sync 128GB
# Quando eu tentar logar no Firebase com o mesmo , o login deve ser feito com sucesso
# Então Irei fazer as validações necessárias para assegurar que o mesmo logou corretamente.

# Dado que eu tenha um Plano Bundle + Sync Ilimitado
# Quando eu tentar logar no Firebase com o mesmo , o login deve ser feito com sucesso
# Então Irei fazer as validações necessárias para assegurar que o mesmo logou corretamente.

# Dado que eu tenha um Vivo Protege Você e um Vivo Sync 128
# Quando eu tentar logar no Firebase com o mesmo , o login deve ser feito com sucesso
# Então Irei fazer as validações necessárias para assegurar que o mesmo logou corretamente.


# Dado que eu tenha um Vivo Protege e um Vivo Sync Imilitado
# Quando eu tentar logar no Firebase com o mesmo , o login deve ser feito com sucesso
# Então Irei fazer as validações necessárias para assegurar que o mesmo logou corretamente.

# Dado que eu tenha um  Vivo Protege Mais e um Vivo Sync Imilitado
# Quando eu tentar logar no Firebase com o mesmo , o login deve ser feito com sucesso
# Então Irei fazer as vqalidações necessárias para assegurar que o mesmo logou corretamente.

# Dado Que eu Possua um Vivo Protege e um Gvt Protege
# Quando eu tentar logar nos 2 de maneira apartada, cada um deverá entrar em seu respectivo cloud.
# Então eu farei todas as validações necessárias em ambos os logins


# Degustação / Retenção


# Funcionalidade: Degustação

# Cenário: Login com Pré, Pós , e Controle

# Dado que eu tenha um chip Pré Pago S/ Plano
# Quando eu tentar logar no Vivo Sync irei receber um SMS de incentivo
# E assinarei um produto de forma aleatória e farei o login
# Então  Irei fazer as validações necessárias


# Dado  que eu tenha um chip Pós Pago S/ Plano
# Quando eu tento fazer o login, irei Logar com sucesso.
# Então Irei verificar se meu plano de assinatura foi o Sync 32GB Degustação

# Dado que eu tenha um Chip Controle
# Quando eu tento fazer login, irei logar com sucesso
# Então Irei verificar se meu plano de assinatura foi o Sync 32GB Degustação

# Funcionalidade: Vivo Sync Retenção

# Cenário: Plano Sync Retenção

# Dado que eu tenho um plano Vivo Sync 32GB com a data de pagamento expirado
# Quando eu  tento logar no meu Vivo Sync
# Então eu me certifico que estou com plano Retenção 2GB

# Dado que eu tenho um plano Vivo Sync 128GB com a data de pagamento expirado
# Quando eu  tento logar no meu Vivo Sync
# Então eu me certifico que estou com plano Retenção 2GB

# Dado que eu tenho um plano Vivo Sync 128GB com a data de pagamento expirado
# Quando eu  tento logar no meu Vivo Sync
# Então eu me certifico que estou com plano Retenção 2GB


# Testes Negativos

# Funcionalidade: Testes Negativos.

# Dado que eu tenha um número cancelado e tente logar
# Quando eu tentar logar com login e senha
# Então eu Irei receber a Mensagem "Produto Cancelado"

# Dado que eu tenha um Produto Sync e tente Logar
# Quando eu Insiro Login válido e PIN inválido
# Então eu recebo a mensagem "senha incorreta"

# Dado que eu tenha um número VIVO PROTEGE inválido
# Quando eu digito o PIN
# Então eu recebo a mensagem "Número Inválido"

# Dado que eu tenho um número inválido
# Quando eu tento logar no Vivo Fixa  com esse número inválido
# Então eu Irei receber a mensagem "Número Inválido"

# Dado que eu tenha um número VIVO FIXA inválido
# Quando eu digito o PIN
# Então eu recebo a mensagem "Número Inválido"

# Dado que eu tenha um e-mail VIVO FIXA inválido
# Quando eu digito o PIN
# Então eu recebo a mensagem "Email inválido"