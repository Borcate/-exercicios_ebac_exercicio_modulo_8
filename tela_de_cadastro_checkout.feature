         #language: pt

| [US-0003] – Tela de cadastro - Checkout |
Funcionalidade: Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro
Para finalizar minha compra

| 1 – Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos |

Cenário: Campos obrigatórios preenchidos
Dado que todos os dados obrigatório devem estar preenchidos
Quando eu clicar em finalizar compra
Então deve concluir cadastro com sucesso

Cenário: Campos obrigatórios não preenchidos
Dado que todos os dados obrigatório devem estar preenchidos
Quando eu clicar em finalizar compra
Então deve exibir mensagem de campos obrigatórios


| 2 – Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro |

Esquema do Cenário: Autenticar campo e-mail com formato inválido
Dado que deve eu informe um email
Quando eu digitar um <e-mail>
Então o sistema deve verificar formato de email, caso seja e-mail com formato inválido, deve exibir uma mensagem de erro.

         Exemplos:

         | E-mail                      | Mensagem        |
         | juana_schmeler@#hotmail.com | E-mail inválido |
         | jeanette48                  | E-mail inválido |
         | thora46@yahoo.com.com       | E-mail inválido |
         | lamar.simonis56@yahoo..com  | E-mail inválido |
         | jed49@gmail.com             | E-mail válido   |
         | lillian.feest43@yahoo.com   | E-mail válido   |
         | cristina61@yahoo.com        | E-mail válido   |
         | julianne.hamill@yahoo.com   | E-mail inválido |


| 3 – Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. |

Cenário: Não preencher nenhum dos campos do checkout
Dado que eu não preencha nenhum os campos do checkout
Quando eu clicar em finalizar compra
Então o sistema deve exibir mensagem de alerta, 'Campos obrigatórios devem estar preenchidos!'

Cenário: Não preencher 1 dos campos obrigatórios
Dado eu não preencha todos campos do checkout
Quando eu clicar em finalizar compra
Então o sistema deve exibir mensagem de alerta, 'Campos obrigatórios devem estar preenchidos!'


