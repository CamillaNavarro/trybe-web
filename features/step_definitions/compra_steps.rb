
Dado("que eu esteja logado no site com {string} e {string}") do |email, password|
  @autenticacao.open
  @login.login(email, password)
end

Dado("que eu escolha uma peça desejada") do
  @produto.escolhe_produto
end

Dado("adiciono a peça no carrinho") do
  @carrinho.adicionar
end

Dado("prossigo para o check-out") do
  @carrinho.prosseguir
end

Dado("visualizo a tela de resumo do pedido") do
  @carrinho.valida_etapa
  @carrinho.prosseguir
end

Dado("confirmo o endereço de entrega") do
  @carrinho.prosseguir
end

Dado("confirmo os meios de envio") do
  @carrinho.termo
  @carrinho.prosseguir
end

Dado("seleciono a forma de pagamento") do
  @carrinho.escolha_pagamento
end

Quando("confirmo os dados de pagamento") do
  @carrinho.confirmar_compra
end

Então("vejo a ordem de compra completa") do
  expect(@carrinho.compra_confirmada)
end
