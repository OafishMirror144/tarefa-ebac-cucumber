#language: pt

Funcionalidade: Configuração de produtos

Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto: Dado que estou na página de configuração do produto

Cenário: Seleção de cor, tamanho e quantidade obrigatória
Quando eu tentar adicionar o produto ao carrinho sem selecionar cor, tamanho e quantidade
Então deve exibir uma mensagem de erro "Por favor, selecione cor, tamanho e quantidade"

Cenário: Limite de 10 produtos por venda
Quando eu selecionar mais de 10 produtos
Então deve exibir uma mensagem de erro "Você não pode adicionar mais de 10 produtos por venda"

Cenário: Limpar configurações do produto
Quando eu selecionar uma cor, tamanho e quantidade
E clicar no botão "limpar"
Então as seleções devem voltar ao estado original
