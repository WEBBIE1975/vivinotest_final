

Given('I launch the app') do
  log "Launching the app"
end




When('I press {string} button on Start Page') do |button|
  begin
    startPage = StartPage.new

    case button
    when 'Get started' then
      startPage.GetStartedButton.click

    when 'See how it works' then
      startPage.SeeHowItWorksButton.click

    when 'Try us out' then
      startPage.TryUsOutButton.click

    when 'I have an account' then
      startPage.IHaveAnAccountButton.click

    else
      raise ArgumentError.new("Error : Button is unkown")
    end

    log "PASS : Button '" + button + "' is pressed on Start page"

  rescue StandardError => e
    log "FAIL : Button '" + button + "' is not pressed on Start page :  " + e.message
    raise
  end
end

When('I press Get started button on Start Page') do
  begin
    startPage = StartPage.new
      startPage.GetStartedButton.click

    log "PASS : Button  is pressed on Start page"

  rescue StandardError => e
    log "FAIL : Button is not pressed on Start page :  " + e.message
    raise
  end
end

Then('Validate description text is displayed on Start page') do
  # pending # Write code here that turns the phrase above into concrete actions
  begin

    startPage = StartPage.new

  startPage.StartPageDescriptionText.displayed?
  log "PASS : Description text is visible on Start page"

  rescue StandardError => e
    log "FAIL : Description text is not visible on Start page :  " + e.message
    raise
  end

end

Then('Validate background image is displayed on Start page') do
  #pending # Write code here that turns the phrase above into concrete actions
  begin
    startPage = StartPage.new

    startPage.StartPageBackgroundImage.displayed?
    log "PASS : Background image is visible on Start page"

  rescue StandardError => e
    log "FAIL : Background image is not visible on Start page :  " + e.message
    raise
  end

end

Then('Validate {string} button is displayed on Start page') do |button|
  begin
     startPage = StartPage.new


    case button
      when 'Get started' then
        startPage.GetStartedButton.displayed?

      when 'See how it works' then
        startPage.SeeHowItWorksButton.displayed?

      when 'Try us out' then
        startPage.TryUsOutButton.displayed?

      when 'I have an account' then
        startPage.IHaveAnAccountButton.displayed?

      else
        raise ArgumentError.new("Error : Button is unkown")
    end

    log "PASS : Button '" + button + "' is visible on Start page"

  rescue StandardError => e
    log "FAIL : Button '" + button + "' is not visible on Start page :  " + e.message
    raise
  end
end