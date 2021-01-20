#language:pt

Funcionalidade: Realizar compra

Sendo um cliente cadastrado
Quero poder realizar compras no site

Contexto: 
    Dado que eu esteja logado no site com "milla_navarro@gmail.com" e "pwd123"

@compra
Cenário: Efetuar compra

    Dado que eu escolha uma peça desejada
    E adiciono a peça no carrinho
    E prossigo para o check-out 
    E visualizo a tela de resumo do pedido
    E confirmo o endereço de entrega 
    E confirmo os meios de envio
    E seleciono a forma de pagamento
    Quando confirmo os dados de pagamento
    Então vejo a ordem de compra completa




