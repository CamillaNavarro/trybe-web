
Dado("que eu acesse a página de autenticação") do
  @autenticacao.open
end

Dado("adiciono um e-mail para cadastro") do
  @autenticacao.cadastrar_email
end

Dado("clico em Create an account") do
  @autenticacao.cadastrar_submeter
end

Quando("submeto o formulário de cadastro") do
  @formcadastro.preencher_cadastro
end

Então("sou direcionado para os detalhes da conta") do
  expect(@conta.valida_tela_conta)
end
