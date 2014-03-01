#!/usr/bin/env ruby

require 'rubygems'
require 'selenium-webdriver'

caps = Selenium::WebDriver::Remote::Capabilities.chrome
caps.platform = 'Windows 7'
caps.version = '32'
caps[:name] = "Testing Selenium 2 with Ruby on Sauce"

driver = Selenium::WebDriver.for(
  :remote,
  :url => "http://rwoods_free:102070a8-f0c6-4ea4-9b03-bc7288a43b78@ondemand.saucelabs.com:80/wd/hub",
  :desired_capabilities => caps)
driver.navigate.to "http://www.google.com"
element = driver.find_element(:name, 'q')
element.send_keys "Hello WebDriver!"
element.submit
puts driver.title
driver.quit