
Dado("que eu esteja logado no site com {string} e {string}") do |email, password|
  visit "http://automationpractice.com/index.php"
  find(".login").click
  find("#email").set email
  find("#passwd").set password
  click_button "Sign in"
end

Dado("que eu escolha uma peça desejada") do
  click_link ("T-shirts")
  first(".product_img_link").click
end

Dado("adiciono a peça no carrinho") do
  click_on ("Add to cart")
end

Dado("prossigo para o check-out") do
  click_on ("Proceed to checkout")
end

Dado("visualizo a tela de resumo do pedido") do
  page.assert_text("Summary")
  click_on ("Proceed to checkout")
end

Dado("confirmo o endereço de entrega") do
  click_on ("Proceed to checkout")
end

Dado("confirmo os meios de envio") do
  find("#uniform-cgv").click
  click_on ("Proceed to checkout")
end

Dado("seleciono a forma de pagamento") do
  click_on ("Pay by bank wire")
end

Quando("confirmo os dados de pagamento") do
  click_on("I confirm my order")
end

Então("vejo a ordem de compra completa") do
  page.assert_text("Your order on My Store is complete.")
end
