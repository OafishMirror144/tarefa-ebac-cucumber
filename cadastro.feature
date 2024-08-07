#language: pt

Funcionalidade: Cadastro de usuário

Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto: Dado que estou na página de cadastro

Cenário: Cadastro com todos os dados obrigatórios
Quando eu preencher todos os dados obrigatórios
E clicar no botão de cadastrar
Então o cadastro deve ser concluído com sucesso

Cenário: Campo de e-mail com formato inválido
Quando eu preencher o campo de e-mail com "email_invalido"
E preencher os demais dados obrigatórios
E clicar no botão de cadastrar
Então deve exibir uma mensagem de erro "Formato de e-mail inválido"

Cenário: Campos obrigatórios vazios
Quando eu tentar cadastrar sem preencher os campos obrigatórios
Então deve exibir uma mensagem de alerta "Por favor, preencha todos os campos obrigatórios"

Esquema do Cenário: Validação de cadastro com múltiplos dados
Quando eu preencher o campo de nome com <nome>
E o campo de e-mail com <email>
E o campo de senha com <senha>
E clicar no botão de cadastrar
Então deve exibir a mensagem <mensagem>

Exemplos:
| nome       | email                 | senha   | mensagem                        |
| "João"     | "joao@exemplo.com"    | "12345" | "Cadastro concluído com sucesso" |
| "Maria"    | "maria@exemplo.com"   | "abcde" | "Cadastro concluído com sucesso" |
| "Carlos"   | "carlos_invalido.com" | "12345" | "Formato de e-mail inválido"     |
| ""         | "vazio@exemplo.com"   | "12345" | "Por favor, preencha todos os campos obrigatórios" |
| "Ana"      | ""                    | "12345" | "Por favor, preencha todos os campos obrigatórios" |
