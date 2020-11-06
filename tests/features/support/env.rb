require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require_relative 'page_helper.rb'
require 'selenium/webdriver'

require "allure-cucumber"

World(Capybara::DSL) #DSLs globais para o Capybara
World(Pages) #Referencia global para o '_pages' em 'page_helper.rb'


Capybara.register_driver :selenium do |app| #registro do driver utilizado para o Capybara
    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome( #instância no browser google chrome
            'chromeOptions' => { 'args' => ['--disable-infobars', 'window-size=1600,1024'] } #parâmentro para a instância do browser
        )
    )
end

Capybara.configure do |config| #config da instância par ao Capybara
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 10
    config.app_host = 'http://192.168.99.100:5000'
end

=begin
Capybara.register_driver :chrome do |app|
    args = %w[window-size=1600,1024 headless disable-gpu]
    
    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => { 
            'args' => args
        }
      )

    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)
  end

  Capybara.configure do |config| #config da instância par ao Capybara
    config.default_driver = :selenium
    config.app_host = 'http://192.168.99.100:5000'
end

Capybara.default_max_wait_time = 10
=end

AllureCucumber.configure do |config| #config do alure_reports
    config.results_directory = "log"
    config.clean_results_directory = true
    config.logging_level = Logger::INFO
  end

  
#Capybara.configure do |config|
#   config.default_driver = :selenium_chrome_headless
#end