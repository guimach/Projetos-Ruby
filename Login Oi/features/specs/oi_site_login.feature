#language:pt

@loginsiteoi

Funcionalidade: Login no Site Oi Proteção Online
  O Hotsite da oi é um Portal de segurança que presta os serviços de:
  Login: Entrar em área logada tendo qualquer tipo de de produto sendo ele avulso ou POM.
  Downgrade: Realiza a diminuição de um pacote e valor de seu plano.
  Upgrade: Realiza o aumento de um pacote e valor de seu plano.
  Comandos Antirroubo: Permite que envie sinais de bloqueio, desbloqueio, alarme, e localiza aparelhos desejados.
  Compra de Assitências: Permite que você compre seguros, auto, pet, vida, e residencial.
  Suporte Online: Permite que que você tire suas dúvidas sobre os produtos, todas de forma online.
  Ajuda: FAQ desevlvida para solucionar as dúvidas simples sem acinar o suporte
  Carrinho de compras: No carrinho de compras fica armazenadas suas futuras aquisições de pacotes selecionados para comprar.

 
Esquema do Cenário: Login o Hotsite Oi
#dividir cenários em positivos negativos
Dado Que eu como Qa, preciso validar a Funcionalidade login e senha com vasta cobertura e incluindo mensagens login com sucesso ou não e o comando
Quando Eu tento fazer o <login> e <senha> de diversas maneiras validar <mensagens> com varios <comandos> e <pacotes> em todos <las>
Então Valido todos os retornos e respostas referentes ao login

Exemplos: 

|    login    |    senha   |               mensagens               |comandos|         pacotes        |  las |
|"30951480431"|   "9436"   |     "Usuário ou senha incorretos."    |   "1"  |           ""           |"3990"|
|"30951480431"| "951480431"|              "SUA CONTA"              |   "1"  |    "Proteção Básica"   |"3990"|
|"00000000000"|     ""     |"Sua senha deve ter ao menos 4 dígitos"|   "0"  |           ""           |"3990"|
|"30951480432"| "951480432"|              "SUA CONTA"              |   "2"  |"Proteção Intermediária"|"3990"|
|"30951480432"|"9000000000"|     "Usuário ou senha incorretos."    |   "2"  |           ""           |"3990"|
|"00000000000"|  "0000000" |       "Cliente não está ativo."       |   "0"  |           ""           |"3990"|
|"30951480433"| "951480433"|              "SUA CONTA"              |   "3"  |   "Proteção Avançada"  |"3990"|
|"30951480433"|"9000000000"|     "Usuário ou senha incorretos."    |   "3"  |           ""           |"3990"|
|"00000000000"|     ""     |"Sua senha deve ter ao menos 4 dígitos"|   "0"  |           ""           |"3990"|
|"30951480434"|"9000000000"|     "Usuário ou senha incorretos."    |   "4"  |           ""           |"3990"|
|"30951480434"| "951480434"|              "SUA CONTA"              |   "ok" |     "Proteção Top"     |"3990"|
|"00000000000"|    "123"   |"Sua senha deve ter ao menos 4 dígitos"|   "0"  |           ""           |"3990"|
|"30951480435"| "951480435"|              "SUA CONTA"              |   "1"  |     "Antirroubo 1"     |"1990"|
|"30951480435"|"9000000000"|     "Usuário ou senha incorretos."    |   "1"  |           ""           |"3990"|
|"00000000000"|  "000000"  |       "Cliente não está ativo."       |   "0"  |           ""           |"1990"|
|"30951480436"| "951480436"|              "SUA CONTA"              |   "2"  |     "Antirroubo 3"     |"1990"|
|"30951480436"|"9000000000"|     "Usuário ou senha incorretos."    |  "ok"  |           ""           |"1990"|
|"00000000000"|     ""     |"Sua senha deve ter ao menos 4 dígitos"|   "0"  |           ""           |"1990"|
|"30951480437"| "951480437"|              "SUA CONTA"              |   "3"  |     "Antirroubo 5"     |"1990"|
|"30951480437"|"9000000000"|     "Usuário ou senha incorretos."    |  "ok"  |           ""           |"1990"|
|"00000000000"|     ""     |"Sua senha deve ter ao menos 4 dígitos"|   "0"  |           ""           |"1990"|
|"30951480438"| "951480438"|              "SUA CONTA"              |   "1"  |    "Oi Segurança 1"    |"2990"|
|"30951480438"|"9000000000"|     "Usuário ou senha incorretos."    |  "ok"  |           ""           |"1990"|
|"00000000000"|     ""     |"Sua senha deve ter ao menos 4 dígitos"|   "0"  |           ""           |"2990"|
|"30951480439"| "951480439"|              "SUA CONTA"              |   "2"  |    "Oi Segurança 3"    |"2990"|
|"30951480439"|"9000000000"|     "Usuário ou senha incorretos."    |  "ok"  |           ""           |"2990"|
|"00000000000"|    "12"    |"Sua senha deve ter ao menos 4 dígitos"|   "0"  |           ""           |"2990"|
|"30951480440"|"9000000000"|     "Usuário ou senha incorretos."    |   "3"  |           ""           |"2990"|
|"30951480440"| "951480440"|              "SUA CONTA"              |  "ok"  |    "Oi Segurança 5"    |"2990"|
