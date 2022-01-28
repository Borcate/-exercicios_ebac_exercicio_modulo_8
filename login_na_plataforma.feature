#language: pt

|[US-0002] – Login na plataforma |

Funcionalidade: Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

|1 – Ao inserir dados válidos deve ser direcionado para a tela de checkout|

Esquema do Cenário: Inserir dados válidos
Dado que eu faça login de autentiação na plataforma
Quando eu inserir <e-mail>
E uma <senha>
Então o sistema deve vericar e direcionar para a tela de checkout

            Exemplos:
            | E-mail                      | Senha           | Exibir tela de checkout |
            | brett_tillman@yahoo.com     | 5_qFMn08PrI2dGJ | Sim                     |
            | jacinthe_tillman@yahoo.com  | Rx6HKYKFFu6Ybq7 | Sim                     |
            | cayla.bahringer21@gmail.com | v6_xlp3u2evX36w | Sim                     |
            | vita.rice@.yahoo.com        | aMeRpgJpJri1edX | Não                     |
            | narciso77@@yahoo.com        | WVmxkB_ue8zEllQ | Não                     |
            | bette.blick#hotmail.com     | j17wU9Yx1mjFfMF | Não                     |


|2 – Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”|

Esquema do Cenário: Inserir dados inválidos
Dado que eu faça login de autentiação na plataforma
Quando eu inserir um <e-mail> 
E uma <senha> 
Então o sistema deve vericar dados e então exibir mensagem de alerta "Usuário ou senha inválidos"

            Exemplos:
            | E-mail                 | Senha           | Mensagem                   |
            | scantheman@gmailco.ml  | hX7nv5NEClOSKlR | Usuário ou senha inválidos |
            | zack_beier@hotmail.com | GcHpNhSz9awtKXL | Usuário ou senha inválidos |
            | clay31@gmail.com       |                 | Usuário ou senha inválidos |
            | jamar49@gmail.con      | bRpB5Om9RiSXgMy | Usuário ou senha inválidos |
            | dolly5@yahoo.com       | 9Nr4miwWJWqrYuz | Seja bem vindo!            |
            | franz.hahn@gmail.com   | meIatkfHY24OYuM | Seja bem vindo!            |





