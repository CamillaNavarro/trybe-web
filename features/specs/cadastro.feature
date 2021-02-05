#language:pt

Funcionalidade: Efetuar cadastro de usuário

Sendo um cliente 
Quero fazer meu cadastro na loja do AutomationPractice
Para que eu possa fazer compras

@cadastro
Cenário: Fazer cadastro de usuário

Dado que eu acesse a página de autenticação
E adiciono um e-mail para cadastro
E clico em Create an account
Quando submeto o formulário de cadastro
Então sou direcionado para os detalhes da conta