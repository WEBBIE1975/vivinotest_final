When('I press Next button on Try us out {string}') do |page|
  begin

    case page
    when 'page 1' then
      tryUsOutPage1 = TryUsOutPage1.new
      tryUsOutPage1.NextButton.click

    when 'page 2' then
      tryUsOutPage2 = TryUsOutPage2.new
      tryUsOutPage2.NextButton.click

    when 'page 3' then
      tryUsOutPage3 = TryUsOutPage3.new
      tryUsOutPage3.NextButton.click

    when 'page 4' then
      tryUsOutPage4 = TryUsOutPage4.new
      tryUsOutPage4.NextButton.click

    else
      raise ArgumentError.new("Error : Button is unkown")
    end

    log "PASS : Next button pressed on " + page

  rescue StandardError => e
    log "FAIL : Next button not pressed on  :  " + e.message
    raise
  end
  end

Then('I swipe {string} on the page') do |direction|
  begin


    if direction == "left"
      Appium::TouchAction.new.swipe(start_x: 0.90 , start_y: 0.5, end_x: 0.1, end_y: 0.5, duration:500).perform
    else
      Appium::TouchAction.new.swipe(start_x: 0.10 , start_y: 0.5, end_x: 0.9, end_y: 0.5, duration:500).perform
      end

    log "PASS : swipe " + direction + " done"

  rescue StandardError => e
    log "FAIL : Error in swipe " + direction  + " :  " + e.message
    raise
  end
end



When('validate Next button is displayed on Try us out {string}') do |page|
  begin

  case page
  when 'page 1' then
    tryUsOutPage1 = TryUsOutPage1.new
    tryUsOutPage1.NextButton.displayed?

  when 'page 2' then
    tryUsOutPage2 = TryUsOutPage2.new
    tryUsOutPage2.NextButton.displayed?

  when 'page 3' then
    tryUsOutPage3 = TryUsOutPage3.new
    tryUsOutPage3.NextButton.displayed?

  when 'page 4' then
    tryUsOutPage4 = TryUsOutPage4.new
    tryUsOutPage4.NextButton.displayed?

  else
    raise ArgumentError.new("Error : Button is unkown")
  end

  log "PASS : Next button is displayed on " + page

rescue StandardError => e
  log "FAIL : Next button is not displayed on  :  " + e.message
  raise
  end
end

Then('validate background image is displayed on Try us out {string}') do |page|
  begin

  case page
  when 'page 1' then
    tryUsOutPage1 = TryUsOutPage1.new
    tryUsOutPage1.BackgroundImage.displayed?

  when 'page 2' then
    tryUsOutPage2 = TryUsOutPage2.new
    tryUsOutPage2.BackgroundImage.displayed?

  when 'page 3' then
    tryUsOutPage3 = TryUsOutPage3.new
    tryUsOutPage3.BackgroundImage.displayed?

  when 'page 4' then
    tryUsOutPage4 = TryUsOutPage4.new
    tryUsOutPage4.BackgroundImage.displayed?

  when 'page 5' then
    tryUsOutPage5 = TryUsOutPage5.new
    tryUsOutPage5.BackgroundImage.displayed?

  else
    raise ArgumentError.new("Error : page is unkown")
  end

  log "PASS : Background image is displayed on " + page

rescue StandardError => e
  log "FAIL : Background image is not displayed on   :  " + e.message
  raise
  end
end




Then('validate indicator image is displayed on Try us out {string}') do |page|
  begin

  case page
  when 'page 1' then
    tryUsOutPage1 = TryUsOutPage1.new
    tryUsOutPage1.IndicatorImage.displayed?

  when 'page 2' then
    tryUsOutPage2 = TryUsOutPage2.new
    tryUsOutPage2.IndicatorImage.displayed?

  when 'page 3' then
    tryUsOutPage3 = TryUsOutPage3.new
    tryUsOutPage3.IndicatorImage.displayed?

  when 'page 4' then
    tryUsOutPage4 = TryUsOutPage4.new
    tryUsOutPage4.IndicatorImage.displayed?

  when 'page 5' then
    tryUsOutPage5 = TryUsOutPage5.new
    tryUsOutPage5.IndicatorImage.displayed?

  else
    raise ArgumentError.new("Error : page is unkown")
  end

  log "PASS : Indicator image is displayed on " + page

rescue StandardError => e
  log "FAIL : Indicator image is not displayed on   :  " + e.message
  raise
  end
end


Then('validate {string} button is displayed on Try us out {string}') do |button, page|
begin

  case button
  when 'Create free account' then
    tryUsOutPage5 = TryUsOutPage5.new
    tryUsOutPage5.CreateFreeAccountButton.displayed?

  when 'Continue without account' then
    tryUsOutPage5 = TryUsOutPage5.new
    tryUsOutPage5.WithOutAnAccountButton.displayed?

  when 'Try us out' then
    tryUsOutPage5 = TryUsOutPage5.new
    tryUsOutPage5.TryUsOutButton.displayed?

  when 'Log in' then
    tryUsOutPage5 = TryUsOutPage5.new
    tryUsOutPage5.LogInButton.displayed?


  else
    raise ArgumentError.new("Error : button is unkown")
  end

  log "PASS : Button  is displayed on " + page

rescue StandardError => e
  log "FAIL : button is not displayed  :  " + e.message
  raise
end
end

Then('validate description text is displayed on Try us out {string}') do |page|
  begin

  case page
  when 'page 1' then
    tryUsOutPage1 = TryUsOutPage1.new
    tryUsOutPage1.DescriptionText.displayed?

  when 'page 2' then
    tryUsOutPage2 = TryUsOutPage2.new
    tryUsOutPage2.DescriptionText.displayed?

  when 'page 3' then
    tryUsOutPage3 = TryUsOutPage3.new
    tryUsOutPage3.DescriptionText.displayed?

  when 'page 4' then
    tryUsOutPage4 = TryUsOutPage4.new
    tryUsOutPage4.DescriptionText.displayed?

  when 'page 5' then
    tryUsOutPage5 = TryUsOutPage5.new
    tryUsOutPage5.DescriptionText.displayed?

  else
    raise ArgumentError.new("Error : page is unkown")
  end

  log "PASS : Description text is displayed on " + page

rescue StandardError => e
  log "FAIL : Description text is not displayed on   :  " + e.message
  raise
  end
end



Then('validate the description text is {string} on Try us out {string}') do |string, page|
  begin

  case page
  when 'page 1' then
    tryUsOutPage1 = TryUsOutPage1.new
    tryUsOutPage1.DescriptionText.text.eql?(string)

  when 'page 2' then
    tryUsOutPage2 = TryUsOutPage2.new
    tryUsOutPage2.DescriptionText.text.eql?(string)

  when 'page 3' then
    tryUsOutPage3 = TryUsOutPage3.new
    tryUsOutPage3.DescriptionText.text.eql?(string)

  when 'page 4' then
    tryUsOutPage4 = TryUsOutPage4.new
    tryUsOutPage4.DescriptionText.text.eql?(string)

  when 'page 5' then
    tryUsOutPage5 = TryUsOutPage5.new
    tryUsOutPage5.DescriptionText.text.eql?(string)

  else
    raise ArgumentError.new("Error : page is unkown")
  end

  log "PASS : Description text is correct on " + page

rescue StandardError => e
  log "FAIL : Description text is not correct on " + page + "  :  " + e.message
  raise
  end
end