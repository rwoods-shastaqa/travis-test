#!/usr/bin/env ruby

require 'rubygems'
require 'selenium-webdriver'

caps = Selenium::WebDriver::Remote::Capabilities.chrome
caps.platform = 'Windows 7'
caps.version = '32'
caps[:name] = "Testing Selenium 2 with Ruby on Sauce"

driver = Selenium::WebDriver.for(
  :remote,
  :url => "http://shastaqa_rwood:9747defc-b9d2-4018-8ada-2d8a0a07fa3a@ondemand.saucelabs.com:80/wd/hub",
  :desired_capabilities => caps)
driver.navigate.to "http://www.google.com"
element = driver.find_element(:name, 'q')
element.send_keys "Hello WebDriver!"
element.submit
puts driver.title
driver.quit