require_relative '../../Controls/Buttons'
require_relative  '../../Controls/Texts'
require_relative  '../../Controls/Images'

class TryUsOutPage5 < CommonFunctions

  attr_accessor :driver, :CreateFreeAccountButton, :BackgroundImage, :DescriptionText, :IndicatorImage, :WithOutAnAccountButton,
               :TryUsOutButton, :LogInButton

   @driver = driver

  def initialize
    @CreateFreeAccountButton            =   Buttons.new.CreateAFreeAccountButton
    @WithOutAnAccountButton            =   Buttons.new.ContinueWithoutAccountButton
    @TryUsOutButton            =   Buttons.new.TryUsOutButton
    @LogInButton            =   Buttons.new.LogInButton

    @BackgroundImage      =   Images.new.TryUsOutBackgroundImage
    @DescriptionText          = Texts.new.TryUsOutDescriptionTextPage5
    @IndicatorImage       =   Images.new.TryUsOutIndicatorImage

  end

end


=begin
page 5 ( Try us out)

description_class = android.widget.TextView
button_Create_a_free_account_id = vivino.web.app.beta:id/create_free_account
button_Continue_without_account_id = vivino.web.app.beta:id/continue_without_account
button_try_us_out_id = vivino.web.app.beta:id/txtTryUsOut
button_log_in_id = vivino.web.app.beta:id/txtIHaveAnAccount
image_indicator_id = vivino.web.app.beta:id/indicator


Page 1,2,3,4 ( See how it works & Try us out )

image_id = vivino.web.app.beta:id/image
description_id = vivino.web.app.beta:id/description
Next_button_id = vivino.web.app.beta:id/next
Indicator_id = vivino.web.app.beta:id/indicator

page 5 ( see how it works )

image_id = vivino.web.app.beta:id/image
button_continue_with_email_id = vivino.web.app.beta:id/continue_with_email
button_continue_with_facebook_id = vivino.web.app.beta:id/continue_with_facebook
button_continue_with_google_id = vivino.web.app.beta:id/continue_with_google
button_try_us_out_id = vivino.web.app.beta:id/txtTryUsOut
button_log_in_id = vivino.web.app.beta

:id/txtIHaveAnAccount
image_indicator_id = vivino.web.app.beta:id/indicator
description_class = android.widget.TextView

p


Top_Tool_bar

Top_Tap_bar





=end