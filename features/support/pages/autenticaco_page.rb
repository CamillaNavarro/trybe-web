class AutenticacaoPage
  include Capybara::DSL

  def open
    visit "/"
    find(".login").click
  end

  def autenticar(email, password)
    find("#email").set email
    find("#passwd").set password
  end

  def cadastrar_email
    ## Devido ao fato de não termos acesso à base de dados para manipular os registros utilizado uma biblioteca para geração de dados Fakes.
    find("#email_create").set Faker::Internet.email(name: "Camilla Navarro", separators: "_")
  end

  def cadastrar_submeter
    find("#SubmitCreate").click
  end
end
