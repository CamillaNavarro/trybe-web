require "rspec"
require "yaml"
require "byebug"
require "capybara/cucumber"
require "capybara/poltergeist"
require "faker"

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = "http://automationpractice.com"
  config.default_max_wait_time = 10
end
