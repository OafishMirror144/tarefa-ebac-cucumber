#language: pt

Funcionalidade: Autenticação de usuário

Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

Contexto: Dado que estou na página de login

Cenário: Autenticação com dados válidos
Quando eu digitar o usuário "cliente@ebac.com"
E a senha "senha123"
E clicar no botão de login
Então devo ser direcionado para a tela de checkout

Cenário: Autenticação com dados inválidos
Quando eu digitar o usuário "cliente@ebac.com"
E a senha "senhaErrada"
E clicar no botão de login
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Cenário: Autenticação com campo de usuário inválido
Quando eu digitar o usuário "usuarioErrado@ebac.com"
E a senha "senha123"
E clicar no botão de login
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
