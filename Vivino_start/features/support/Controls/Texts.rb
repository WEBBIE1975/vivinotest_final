require 'rubygems'
require 'appium_lib'
require 'cucumber'

class Texts

  # Description text on Start Screen
  def StartScreenDescriptionText
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/desc_text").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/desc_text")
    else
      raise "This control is not implemented yet"
    end
  end

  # Description text on Page 1,2,3,4 ( See how it works & Try us out )
  def TryUsOutDescriptionText
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/description").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/description")
    else
      raise "This control is not implemented yet"
    end
  end

  # Description text on Page 5 ( Try us out )
  def TryUsOutDescriptionTextPage5
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:class, "android.widget.TextView").displayed? }
      return  $driver.find_element(:class, "android.widget.TextView")
    else
      raise "This control is not implemented yet"
    end
  end


  # Title text on Create account page
  def TitleCreateAccountPage
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:class, "android.widget.TextView").displayed? }
      return  $driver.find_element(:class, "android.widget.TextView")
    else
      raise "This control is not implemented yet"
    end
  end

  # Edit email on Create account page
  def EmailCreateAccountPage
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/edtEmail").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/edtEmail")
    else
      raise "This control is not implemented yet"
    end
  end


  # Password email on Create account page
  def PasswordCreateAccountPage
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/edtPassword").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/edtPassword")
    else
      raise "This control is not implemented yet"
    end
  end

  # Dialog alert title on Create account page
  def AlertTitleCreateAccountPage
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/alertTitle").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/alertTitle")
    else
      raise "This control is not implemented yet"
    end
  end

  # Dialog alert message on Create account page
  def AlertMessageCreateAccountPage
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "android:id/message").displayed? }
      return  $driver.find_element(:id, "android:id/message")
    else
      raise "This control is not implemented yet"
    end
  end
end
