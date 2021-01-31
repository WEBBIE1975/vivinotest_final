require 'rubygems'
require 'appium_lib'
require 'cucumber'

class Views

  # Alert dialog on create account page when enter wrong email.
  def AlertDialogView
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/parentPanel").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/parentPanel")
    else
      raise "This control is not implemented yet"
    end
  end

end