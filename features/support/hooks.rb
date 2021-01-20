require "selenium-webdriver"

Before do
  @autenticacao = AutenticacaoPage.new
  @formcadastro = FormCadastroPage.new
  @conta = ContaPage.new
  @login = LoginPage.new
  @produto = ProdutosPage.new
  @carrinho = CarrinhoPage.new
end
