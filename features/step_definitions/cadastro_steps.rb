
Dado("que eu acesse a página de autenticação") do
  ##Página de Autenticação
  visit "http://automationpractice.com/index.php?controller=authentication&back=my-account"
end

Dado("adiciono um e-mail para cadastro") do
  #Pagina autenticação
  ## Devido ao fato de não termos acesso à base de dados para manipular os registros utilizado uma biblioteca para geração de dados Fakes.
  find("#email_create").set Faker::Internet.email(name: "Camilla Navarro", separators: "_")
end

Dado("clico em Create an account") do
  find("#SubmitCreate").click
end

Quando("submeto o formulário de cadastro") do
  ## Página Form Cadastro
  expect(page).to have_content("Create an account")

  find("#customer_firstname").set Faker::Name.first_name
  find("#customer_lastname").set Faker::Name.last_name
  find("#passwd").set ("pwd123")
  find("#address1").set Faker::Address.street_address
  find("#city").set Faker::Address.city
  find("#id_state > option:nth-child(2)").click
  find("#postcode").set "00000"
  find("#phone_mobile").set Faker::PhoneNumber.cell_phone
  click_button "Register"
end

Então("sou direcionado para os detalhes da conta") do
  expect(page).to have_content(" My account")
end
