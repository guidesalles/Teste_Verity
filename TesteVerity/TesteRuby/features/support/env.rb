require "cucumber"
require "capybara/cucumber"
require "capybara/rspec"
require "site_prism"
require "rspec"
require "rspec/expectations"


Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 7
    Capybara.page.driver.browser.manage.window.maximize
end