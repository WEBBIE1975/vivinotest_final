require 'rubygems'
require 'appium_lib'
require 'cucumber'
require 'rspec/expectations'
require 'test/unit'
extend Test::Unit::Assertions

require_relative 'Controls/Common_Functions'



#creating an array from the data in the YML file
AccountInfo = YAML.load_file("features/support/AccountInfo.yml")

# Parsing the variables from cumcumber.yml

  puts ENV['PLATFORM']
  puts ENV['SIMULATOR']

  if ENV['PLATFORM']=='Android' and ENV['SIMULATOR']=='False'

    caps = Appium.load_appium_txt file: File.expand_path("./../android/appium.txt", __FILE__), verbose: true
  elsif ENV['PLATFORM']=='Android' and ENV['SIMULATOR']=='True'

    caps = Appium.load_appium_txt file: File.expand_path("./../android_sim/appium.txt", __FILE__), verbose: true
  elsif ENV['PLATFORM']=='iOS' and ENV['SIMULATOR']=='False'

    caps = Appium.load_appium_txt file: File.expand_path("./../ios/appium.txt", __FILE__), verbose: true
    elsif ENV['PLATFORM']='iOS' && ENV['SIMULATOR']='True'
    caps = Appium.load_appium_txt file: File.expand_path("./../ios_sim/appium.txt", __FILE__), verbose: true
  else

    caps = Appium.load_appium_txt file: File.expand_path("./fisk", __FILE__), verbose: true
end

Appium::Driver.new(caps, true )


Appium::promote_appium_methods CommonFunctions
Appium::promote_appium_methods Object

