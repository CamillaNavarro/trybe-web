class ContaPage
  include Capybara::DSL

  def valida_tela_conta
    return find(".page-heading")
  end
end
