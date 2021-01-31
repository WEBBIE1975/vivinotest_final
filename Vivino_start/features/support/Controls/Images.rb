require 'rubygems'
require 'appium_lib'
require 'cucumber'

class Images

  # Background image on Start Screen
  def StartScreenBackgroundImage
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/view_images").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/view_images")
    else
      raise "This control is not implemented yet"
    end
  end

  # Background image on Start Screen
  def TestStartScreenBackgroundImage
    if (ENV['PLATFORM']=='Android')
    wait{$driver.find_element(:id, "vivino.web.app.beta:id/view_images").displayed? }
    return  $driver.find_element(:id, "vivino.web.app.beta:id/view_images")
  else
    raise "This control is not implemented yet"
  end
  end

  # Indicator image on Page 1,2,3,4 ( See how it works & Try us out )
  def TryUsOutIndicatorImage
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/indicator").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/indicator")
    else
      raise "This control is not implemented yet"
    end
  end

  # Background image on Page 1,2,3,4 ,5( See how it works & Try us out )
  def TryUsOutBackgroundImage
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/image").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/image")
    else
      raise "This control is not implemented yet"
    end
  end

end