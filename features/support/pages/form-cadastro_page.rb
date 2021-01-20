class FormCadastroPage
    include Capybara::DSL

    def valida_tela_cadastro
        expect(page).to have_content("Create an account")

    end

    def preencher_cadastro
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



end
