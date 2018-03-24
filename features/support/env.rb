require 'appium_lib'
require 'pry'

# 1- Saber quais caps queremos na nossa sessao (appium.txt)
caps_path = File.join(File.dirname(__FILE__), '..', '..', 'caps', ENV['QA'], "#{ENV['PLATFORM']}.txt")
caps = Appium.load_appium_txt file: caps_path, verbose: true

# 2- Criar um cliente e usar as caps
Appium::Driver.new caps, true

class AppiumWorld
end

Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end



FeatureMemory = Struct.new(:feature).new

# 3- Iniciar a sessao
Before do |scenario|
  $driver.start_driver
  # if FeatureMemory.feature != scenario.feature.name ||
  #     scenario.source_tag_names.include?('@reinstall')
  #   remove_app "com.inducesmile.androidecommerceshop"
  # end

  # launch_app

  # FeatureMemory.feature = scenario.feature.name
end

After do |scenario|
  file_name = "screenshot_#{Time.now.strftime('%Y%m%d%H%M%S')}.png"
  $driver.screenshot(File.join("/Users/oscar/treinamento_appium/cucumber/screenshot", file_name)) if
    scenario.failed?
  $driver.driver_quit
end
