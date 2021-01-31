When('I enter {string} as email on Create account Page') do |email_string|
  begin
    createAccountPage = CreateAccountPage.new
    createAccountPage.Email.click
    createAccountPage.Email.type(email_string)


    log "PASS : email text '" + email_string + "' is entered on Create account page"

  rescue StandardError => e
    log "FAIL : email text '" + email_string + "' is entered on Create account page : " + e.message
    raise
  end
end



When('I enter {string} as password on Create account Page') do |password_string|
  begin
    createAccountPage = CreateAccountPage.new
    createAccountPage.Password.click
    createAccountPage.Password.type(password_string)
    log "PASS : email text '" + password_string + "' is entered on Create account page"

  rescue StandardError => e
    log "FAIL : email text '" + password_string + "' is entered on Create account page : " + e.message
    raise
  end
end


When('I press {string} on Create account Page') do |button|
  begin
    createAccountPage = CreateAccountPage.new

    case button
    when 'NEXT' then

      createAccountPage.NextButton.click

    when 'BACK' then

      createAccountPage.BackButton.click

    else
      raise ArgumentError.new("Error : Button is unkown")
    end

    log "PASS : " + button + " button is pressed on "

  rescue StandardError => e
    log "FAIL : " + button + " button is not pressed on  :  " + e.message
    raise
  end
end


Then('validate error message dialog is showing') do
  begin
    alertDialogPage = AlertDialogPage.new
    alertDialogPage.DialogView.displayed?

    log "PASS : Alert dialog is displayed "

  rescue StandardError => e
    log "FAIL : Alert dialog is not displayed : " + e.message
    raise
  end
end

Then('validate dialog title is {string}') do |title|
  begin
    alertDialogPage = AlertDialogPage.new
    alertDialogPage.AlertTitle.text.eql?(title)

    log "PASS : Alert title '" + title + "' is displayed "

  rescue StandardError => e
    log "FAIL : Alert title '" + title + "' is not displayed : " + e.message
    raise
  end
end


Then('validate dialog error message is {string}') do |message|
  begin
    alertDialogPage = AlertDialogPage.new
    alertDialogPage.AlertMessage.text.eql?(message)

    log "PASS : Alert title '" + message + "' is displayed "

  rescue StandardError => e
    log "FAIL : Alert title '" + message + "' is not displayed : " + e.message
    raise
  end
end

Then('validate {string} button is displayed') do |button|
  begin
    alertDialogPage = AlertDialogPage.new

    case button
    when 'OK' then
      alertDialogPage.OkButton.displayed?

    else
      raise ArgumentError.new("Error : Button is unkown")
    end

    log "PASS : Alert dialog button '" + button + "' is displayed "

  rescue StandardError => e
    log "FAIL : Alert dialog button '" + button + "' is not displayed : " + e.message
    raise
  end
end



When('I enter the email from the config file on Create account Page') do
  begin
    createAccountPage = CreateAccountPage.new
    createAccountPage.Email.click
    #  login.loginWith(appLoginDetails[['username1'], appLoginDetails['password'])
    createAccountPage.Email.type(AccountInfo['email'])
    log "PASS : email text '" + AccountInfo['email'] + "' is entered on Create account page"

  rescue StandardError => e
    log "FAIL : email text '" + AccountInfo['email'] + "' is entered on Create account page : " + e.message
    raise
  end
end

When('I enter the password from the config file on Create account Page') do
  begin
    createAccountPage = CreateAccountPage.new
    createAccountPage.Password.click
    createAccountPage.Password.type(AccountInfo['password'])
    log "PASS : email text '" + AccountInfo['password'] + "' is entered on Create account page"

  rescue StandardError => e
    log "FAIL : email text '" + AccountInfo['password'] + "' is entered on Create account page : " + e.message
    raise
  end
end
