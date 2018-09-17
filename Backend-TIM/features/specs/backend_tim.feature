#language:pt

@backend_tim

Funcionalidade: Backend TIM
O Backend da tim tem como principal foco em testes suas diversas compras e cancelamentos de seus produtos. Testálos em ambos ambientes é imprescindível
para que possamos ter embasamento e confiabilidade em nosso sistema e nos assegurarmos os possívei erros que vierem possam ser sanados imediatamente , ou 
que possamos avisar terceiros em tempo hábil para nada de grave possa vir a ocorrer , assim evitando possiveis penalidades que a empresa possa sofrer.
O nosso principal canal de compra e cancelamento da tim é uma api , na qual enviamos dados do cliente que são imediatamente consumidos pela TIM assim 
provisionando os parceiros. Quando queremos fazer o cancelamento deste por algum motivo, o fluxo ocorre na mesma lógica, enviamos dados de nosso cliente a TIM
e ela imediatamente cancela este usuário


Esquema do Cenário: Compra dos produtos POM

Dado que eu como QA possuo uma tabela com todos produtos da tabela <service_id> que se enquadram no POM e suas <palavras_chave> e um Service ID que não pode ser repedido.
Quando eu reunir as informações necessárias irei executar as compras do POM
Então será exibida a mensagem POM contratado com sucesso.
E farei o cancelamento do mesmo que deverá exibir a mensagem POM cancelado com sucesso.

Exemplos: 

|     service_id     |palavras_chave|msisdn
|"TIM_PROT_ESSENCIAL"|      "1"     |
| "TIM_PROT_PREMIUM" |      "2"     |
| "TIM_PROT_FAMILIA" |      "3"     |
|"TIM_PROT_FAMIL_PRM"|      "4"     |

Esquema do Cenário: Compra dos produtos ENSINA

Dado que eu como QA possuo uma tabela com todos produtos da tabela <service_id> que se enquadram no POM e suas <palavras_chave> e um Service ID que não pode ser repedido.
Quando eu reunir as informações necessárias irei executar as compras do ENSINA
Então será exibida a mensagem ENSINA contratado com sucesso.
E farei o cancelamento do mesmo que deverá exibir a mensagem ENSINA cancelado com sucesso.

Exemplos: 

|   service_id   |palavras_chave|msisdn
|"FS_PROT_ENSINA"|"GRATIS TRIAL"|

Esquema do Cenário: Compra dos produtos TIM Backup

Dado que eu como QA possuo uma tabela com todos produtos da tabela <service_id> que se enquadram no POM e suas <palavras_chave> e um Service ID que não pode ser repedido.
Quando eu reunir as informações necessárias irei executar as compras do TIM BACKUP
Então será exibida a mensagem Backup contratado com sucesso.
E farei o cancelamento do mesmo que deverá exibir a mensagem Backup cancelado com sucesso.

Exemplos:

|      service_id      |palavras_chave|msisdn
| "TIM_PROT_BCKUP_5GB" |     "5gb"    |
| "TIM_PROT_BCKUP_30GB"|    "30gb"    |
|"TIM_PROT_BCKUP_100GB"|    "100gb"   |


Esquema do Cenário: Compra dos produtos TIM ANTIRROUBO E SEGURANCA 

Dado que eu como QA possuo uma tabela com todos produtos da tabela <service_id> que se enquadram no POM e suas <palavras_chave> e um Service ID que não pode ser repedido.
Quando eu reunir as informações necessárias irei executar as compras do ANTIRROUBO E SEGURANCA 
Então será exibida a mensagem ANTIRROUBO E SEGURANCA contratado com sucesso.
E farei o cancelamento do mesmo que deverá exibir a mensagem ANTIRROUBO E SEGURANCA cancelado com sucesso.


Exemplos:

|      service_id     |palavras_chave|msisdn
| "TIM_PROT_SEGURANCA"|      "1"     |
| "TIM_PROT_SEGURANCA"|      "2"     |
| "TIM_PROT_SEGURANCA"|      "3"     |
| "TIM_PROT_ANTIROUBO"|      "1"     |
| "TIM_PROT_ANTIROUBO"|      "2"     |
| "TIM_PROT_ANTIROUBO"|      "3"     |
|"TIM_PROT_SEG_COMPUT"|     "CP"     |


Esquema do Cenário: Tentativa de compra com Produto Inválido

Dado eu como qa tentarei inserir um produto com <service_id> inválido e e uma <palavras_chave> inválida. 
Quando eu reunir as informações necessárias tentarei fazer a compra
Então a api deve me retornar o status "406" com a mensagem "Produto nao encontrado"

Exemplos: 

|      service_id          |palavras_chave|msisdn
| "TIM_PROT_SEGURANCA!@##$"|      "1"     |
| "TIM_PROT_ANTIROUBO@##$" |      "3"     |
| "TIM_PROT_BCKUP_5GB!@$"  |     "5gb"    |
|"TIM_PROT_ESSENCIAL!@#$"  |      "1"     |



Esquema do Cenário: Tentativa de compra com MSISDN Inválido

Dado eu como qa tentarei inserir um produto com <service_id> Válido e e uma <palavras_chave> válida e <msisdn> inválido. 
Quando eu reunir as informações necessárias tentarei fazer a compra
Então a api deve me retornar o status "406" com a mensagem "É esperado um dos objetos: SubscriptionNotificationRequest, UnsubscriptionNotificationRequest, CoreSubscriptionNotificationRequest, CoreUnsubscriptionNotificationRequest"

Exemplos: 

|       service_id      |palavras_chave|   msisdn |
| "TIM_PROT_SEGURANCA"  |      "1"     |"!@@##$$%"|
| "TIM_PROT_ANTIROUBO"  |      "3"     |"!@@##$$%"|
| "TIM_PROT_BCKUP_5GB"  |     "5gb"    |"@@#$$%%3"|
|"TIM_PROT_ESSENCIAL"   |      "1"     |"!@#@$$%3"|


Esquema do Cenário: Tentativa de compra com Palavra Chave Inválida. 

Dado eu como qa tentarei inserir um produto com <service_id> Válido e e uma <palavras_chave> Invpálidas e <msisdn> inválido. 
Quando eu reunir as informações necessárias tentarei fazer a compra
Então a api deve me retornar o status "406" com a mensagem "Produto nao encontrado"

Exemplos: 

|       service_id      |   palavras_chave  |   msisdn 
| "TIM_PROT_SEGURANCA"  |      "!@!@#1"     |
| "TIM_PROT_ANTIROUBO"  |      "@#@3"       |
| "TIM_PROT_BCKUP_5GB"  |     "1#@@##5gb"   |
|"TIM_PROT_ESSENCIAL"   |      "12244@"     |
