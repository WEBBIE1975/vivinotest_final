require_relative '../../Controls/Buttons'
require_relative  '../../Controls/Texts'
require_relative  '../../Controls/Images'
require_relative  '../../Controls/Views'

class AlertDialogPage < CommonFunctions

  attr_accessor :driver, :DialogView, :AlertMessage, :AlertTitle, :OkButton

  @driver = driver

  def initialize
    @DialogView          =   Views.new.AlertDialogView
    @AlertTitle   =     Texts.new.AlertTitleCreateAccountPage
    @AlertMessage  =   Texts.new.AlertMessageCreateAccountPage
    @OkButton =   Buttons.new.OKButtonCreateAccountAlertDialog

  end
end

