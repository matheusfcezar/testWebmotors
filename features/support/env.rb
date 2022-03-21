# frozen_string_literal: true

require 'cucumber'
require 'httparty'
require 'report_builder'
require 'rspec'
require 'rubocop'
require 'yaml'
require 'pry'
require 'appium_console'
require 'appium_lib'
require 'appium_lib_core'
require_relative 'pagina_objetos'
require_relative 'carregar_arquivo'
require 'selenium-webdriver'

World(PaginaObjetos)
World(CarregarArquivo)

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
$wait = Selenium::WebDriver::Wait.new(timeout: 60)

desired_caps = {
    'platformName': 'Android',
    'app': File.expand_path('../../../apk/webmotors.apk',__FILE__),
    'automationName': 'uiautomator2',
    'ensureWebviewsHavePages': true,
    'connectHardwareKeyboard': true
}

Appium::Driver.new({
    'caps' => desired_caps}, true)
Appium.promote_appium_methods Object

