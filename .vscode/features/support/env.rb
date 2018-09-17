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

require_relative '../functions/function_tim.rb'

require_relative '../functions/function_vivo.rb'

require_relative '../functions/function_kibana.rb'

require_relative '../functions/function_hero.rb'

require_relative '../functions/function_oi.rb'



Capybara.configure do |config|
    config.default_driver = :selenium
end

Capybara.default_max_wait_time = 5

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
#ABRE BROWSER
Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
    Capybara::Selenium::Driver.new(app, :browser => :firefox)

  
 end

  Capybara.configure do |config|
      config.app_host = 'https://globo.com'
  end



  




