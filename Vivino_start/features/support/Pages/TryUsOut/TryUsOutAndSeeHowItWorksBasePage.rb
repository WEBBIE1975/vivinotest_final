require_relative '../../Controls/Buttons'
require_relative  '../../Controls/Texts'
require_relative  '../../Controls/Images'

class TryUsOutAndSeeHowItWorksBasePage < CommonFunctions

  attr_accessor :driver, :NextButton, :BackgroundImage, :DescriptionText, :IndicatorImage

  @driver = driver

   def initialize
    @NextButton            =   Buttons.new.TryUsOutNextButton
    @BackgroundImage      =   Images.new.TryUsOutBackgroundImage
    @DescriptionText          = Texts.new.TryUsOutDescriptionText
    @IndicatorImage       =   Images.new.TryUsOutIndicatorImage
  end
end

