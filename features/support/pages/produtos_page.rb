class ProdutosPage
    include Capybara::DSL

    def escolhe_produto
        click_link ("T-shirts")
  first(".product_img_link").click
    end

end