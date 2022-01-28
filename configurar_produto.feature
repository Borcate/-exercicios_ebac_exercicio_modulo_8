#language: pt

|[US-0001] – Configurar produto   |

Funcionalidade: Configurar produto 
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

|1 – Seleções de cor, tamanho e quantidade devem ser obrigatórios|

Cenário: Selecionar cor, tamanho e quantidade 
Dado que seleções de cor, tamanho e quantidade devem ser obrigatórios 
Quando eu clicar em comprar
Então deve ser inserido no carrinho 

Cenário: Selecionar cor e tamanho 
Dado que seleções de cor, tamanho e quantidade devem ser obrigatórios 
Quando eu clicar em comprar
Então deve ser exibido "campo quantidade é obrigatório"

Cenário: Selecionar cor e quantidade 
Dado que seleções de cor, tamanho e quantidade devem ser obrigatórios 
Quando eu clicar em comprar
Então deve ser exibido "campo tamanho é obrigatório"

Cenário: Selecionar tamanho e quantidade 
Dado que seleções de cor, tamanho e quantidade devem ser obrigatórios 
Quando eu clicar em comprar
Então deve ser exibido "campo cor é obrigatório"

Cenário: Não selecionar cor, tamanho e quantidade
Dado que seleções de cor, tamanho e quantidade devem ser obrigatórios 
Quando eu clicar em comprar
Então deve ser deve ser exibido "campo cor, tamanho e quantidade são obrigatórios"

|2 – Deve permitir apenas 10 produtos por venda|

Esquema do Cenário: Permitir inserir 10 produtos 
Dado que deve permitir apenas 10 produtos por venda
Quando eu inserir <quantidade > 10 > 
Então o sistema não deve permitir inserir no carrinho

            Exemplos:

            | Quantidade | Vericar Quantidade de produtos |
            | 9          | Permitir                       |
            | 10         | Permitir                       |
            | 11         | Não permitir                   |


|3 –Quando eu clicar no botão “limpar” deve voltar ao estado original|

Contexto: Quando eu clicar no botão “limpar” deve voltar ao estado original

Cenário: Inserir cor, tamanho e quantidade 
Quando clicar em limpar 
Então não deve exibir as informações selecionadas anteriormente 

Cenário: Inserir cor, tamanho e quantidade 
Quando não clicar em limpar 
Então deve manter as informações selecionadas  

