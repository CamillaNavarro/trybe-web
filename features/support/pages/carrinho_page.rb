class CarrinhoPage
  include Capybara::DSL

  def adicionar
    click_on ("Add to cart")
  end

  def prosseguir
    click_on ("Proceed to checkout")
  end

  def termo
    find("#uniform-cgv").click
  end

  def escolha_pagamento
    click_on ("Pay by bank wire")
  end

  def confirmar_compra
    click_on ("I confirm my order")
  end

  def valida_etapa
    return find(".page-heading")
  end

  def compra_confirmada
    return page.assert_text("Your order on My Store is complete.")
  end
end
