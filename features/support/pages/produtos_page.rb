class ProdutosPage
  include Capybara::DSL

  def escolhe_produto
    click_link("T-shirts")
    find(".product-container").click
    click_on "Add to cart"
  end
end
