require_relative  '../Controls/Buttons'
require_relative  '../Controls/Texts'
require_relative  '../Controls/Images'

class CreateAccountPage < CommonFunctions

  attr_accessor :driver, :Email, :Password, :GoogleButton, :FacebookButton, :BackButton, :TitleDescription, :NextButton

  @driver = driver

  def initialize
    @TitleDescription          =   Texts.new.TitleCreateAccountPage
    @BackButton   =   Buttons.new.BackButtonCreateAccount
    @FacebookButton  =   Buttons.new.FacebookButtonCreateAccount
    @GoogleButton  =   Buttons.new.GoogleButtonCreateAccount
    @Email          =   Texts.new.EmailCreateAccountPage
    @Password      =   Texts.new.PasswordCreateAccountPage
    @NextButton      =   Buttons.new.NextButtonCreateAccount

  end


end

