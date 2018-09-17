require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'
require 'httparty'
require 'pry'
require 'faker'
require 'site_prism'
require 'cpf_faker'
require 'mysql2'
require 'net/https'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Dir[File.join(File.dirname(__FILE__), './functions/*.rb')].each {     |file| require_relative file }
ENV_TYPE = ENV['ENV_TYPE']
DATA = YAML.load_file(File.dirname(__FILE__) + "/#{ENV_TYPE}.yaml") 
BROWSER = ENV['BROWSER']
Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = DATA['url']['site']
end

Capybara.default_max_wait_time = 30
Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(
    app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOption' => {
                'args' => ['windows-size=1366,768']
            }
        )
    )
    elsif BROWSER.eql?('firefox')
    Capybara::Selenium::Driver.new(
        app,
        :browser => :firefox,
        :marionette => true
    )
    end
end

  

