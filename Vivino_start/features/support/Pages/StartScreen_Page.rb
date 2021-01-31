require_relative  '../Controls/Buttons'
require_relative  '../Controls/Texts'
require_relative  '../Controls/Images'

class StartPage < CommonFunctions

  attr_accessor  :driver, :GetStartedButton, :SeeHowItWorksButton, :TryUsOutButton, :IHaveAnAccountButton,
                :StartPageDescriptionText, :StartPageBackgroundImage,
                :TestGetStartedButton, :TestIHaveAnAccountButton, :TestSeeHowItWorksButton, :TestTryUsOutButton,
                :TestStartPageDescriptionText, :TestStartPageBackgroundImage

  @driver = driver

  def initialize
    @TryUsOutButton            =   Buttons.new.StartScreenTryUsOutButton
    @IHaveAnAccountButton      =   Buttons.new.StartScreenIHaveAnAccountButton
    @GetStartedButton          =   Buttons.new.StartScreenGetStartedButton
    @SeeHowItWorksButton       =   Buttons.new.StartScreenSeeHowItWorksButton
    @StartPageDescriptionText  =   Texts.new.StartScreenDescriptionText
    @StartPageBackgroundImage  =   Images.new.StartScreenBackgroundImage
  end



end
