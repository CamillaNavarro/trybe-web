class LoginPage
  include Capybara::DSL

  def login(email, password)
    find("#email").set email
    find("#passwd").set password
    click_button "Sign in"
  end
end
