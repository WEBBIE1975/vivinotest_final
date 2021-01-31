require 'rubygems'
require 'appium_lib'
require 'cucumber'

class Buttons

  # Get started button on Start Screen
  def StartScreenGetStartedButton
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/getstarted_layout").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/getstarted_layout")
    else
      raise "This control is not implemented yet"
    end
  end

  # Try us out button on Start Screen
  def StartScreenTryUsOutButton
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/txtTryUsOut").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/txtTryUsOut")
    else
      raise "This control is not implemented yet"
    end
  end

  # I Have an account button on Start Screen
  def StartScreenIHaveAnAccountButton
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/txtTryUsOut").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/txtTryUsOut")
    else
      raise "This control is not implemented yet"
    end
  end

  # See how it works button on Start Screen
  def StartScreenSeeHowItWorksButton
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/seehowitwork").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/seehowitwork")
    else
      raise "This control is not implemented yet"
    end
  end

  # Create a free account button on Page 5 ( Try us out )
  def CreateAFreeAccountButton
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/create_free_account").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/create_free_account")
    else
      raise "This control is not implemented yet"
    end
  end

  # Continue without an account button on Start Page
  def ContinueWithoutAccountButton
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/continue_without_account").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/continue_without_account")
    else
      raise "This control is not implemented yet"
    end
  end

  # Try us button button on Start Page
  def TryUsOutButton
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/txtTryUsOut").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/txtTryUsOut")
    else
      raise "This control is not implemented yet"
    end
  end

  # Log in button on Page Page 5 ( Try us out )
  def LogInButton
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/txtIHaveAnAccount").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/txtIHaveAnAccount")
    else
      raise "This control is not implemented yet"
    end
  end


  # Next button on Page Page 5 ( Try us out )
  def TryUsOutNextButton
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/next").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/next")
    else
      raise "This control is not implemented yet"
    end
  end


  # Back button on Create account page
  def BackButtonCreateAccount
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:class, "android.widget.ImageButton").displayed? }
      return  $driver.find_element(:class, "android.widget.ImageButton")
    else
      raise "This control is not implemented yet"
    end
  end

  # Facebook login button on Create account page
  def FacebookButtonCreateAccount
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/signupwithfacebook_layout").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/signupwithfacebook_layout")
    else
      raise "This control is not implemented yet"
    end
  end

  # Google login button on Create account page
  def GoogleButtonCreateAccount
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/signupwithgoogle_layout").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/signupwithgoogle_layout")
    else
      raise "This control is not implemented yet"
    end
  end


  # Next button on Create account page
  def NextButtonCreateAccount
    if (ENV['PLATFORM']=='Android')
      wait{$driver.find_element(:id, "vivino.web.app.beta:id/action_next").displayed? }
      return  $driver.find_element(:id, "vivino.web.app.beta:id/action_next")
    else
      raise "This control is not implemented yet"
    end
  end


# Ok button on Create account page alert dialog
def OKButtonCreateAccountAlertDialog
  if (ENV['PLATFORM']=='Android')
    wait{$driver.find_element(:id, "android:id/button1").displayed? }
    return  $driver.find_element(:id, "android:id/button1")
  else
    raise "This control is not implemented yet"
  end
end
end

#$driver.find_element(:class, "android.widget.ImageButton" and :content-desc, "Navigate up")