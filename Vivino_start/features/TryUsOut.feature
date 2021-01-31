Feature: Go through Try us out pages

  @POM_Test @Android @Simulator @iOS
  Scenario: Go to the Try us out page 1 and check the page
    Given I launch the app
    When I press 'Try us out' button on Start Page
    Then validate background image is displayed on Try us out 'page 1'
    And validate description text is displayed on Try us out 'page 1'
    And validate Next button is displayed on Try us out 'page 1'
    And validate indicator image is displayed on Try us out 'page 1'
    And validate the description text is 'Get honest wine ratings on any wine from our community of millions of wine drinkers' on Try us out 'page 1'

  @POM_Test @Android @Simulator
  Scenario: Go to the Try us out page 2 and check the page
    Given I launch the app
    When I press 'Try us out' button on Start Page
    And I press Next button on Try us out 'page 1'
    Then validate background image is displayed on Try us out 'page 2'
    And validate description text is displayed on Try us out 'page 2'
    And validate Next button is displayed on Try us out 'page 2'
    And validate indicator image is displayed on Try us out 'page 2'
    And validate the description text is "Shop the world's largest wine selection directly from your phone" on Try us out 'page 2'

  @POM_Test @Android @Simulator
  Scenario: Test swipe function
    Given I launch the app
    When I press 'Try us out' button on Start Page
    And I swipe 'left' on the page
    Then validate background image is displayed on Try us out 'page 2'
    And validate description text is displayed on Try us out 'page 2'
    And validate Next button is displayed on Try us out 'page 2'
    And validate indicator image is displayed on Try us out 'page 2'
    And validate the description text is "Shop the world's largest wine selection directly from your phone" on Try us out 'page 2'
    And I swipe 'left' on the page
    And I swipe 'right' on the page
    And validate background image is displayed on Try us out 'page 2'
    And validate description text is displayed on Try us out 'page 2'
    And validate Next button is displayed on Try us out 'page 2'
    And validate indicator image is displayed on Try us out 'page 2'
    And validate the description text is "Shop the world's largest wine selection directly from your phone" on Try us out 'page 2'

  @POM_Test @Android @Simulator
  Scenario: Go to the Try us out page 3 and check the page
    Given I launch the app
    When I press 'Try us out' button on Start Page
    And I press Next button on Try us out 'page 1'
    And I press Next button on Try us out 'page 2'
    Then validate background image is displayed on Try us out 'page 3'
    And validate description text is displayed on Try us out 'page 3'
    And validate Next button is displayed on Try us out 'page 3'
    And validate indicator image is displayed on Try us out 'page 3'
    And validate the description text is 'Scan any bottle to learn all about the wine inside' on Try us out 'page 3'

  @POM_Test @Android @Simulator
  Scenario: Go to the Try us out page 4 and check the page
    Given I launch the app
    When I press 'Try us out' button on Start Page
    And I press Next button on Try us out 'page 1'
    And I press Next button on Try us out 'page 2'
    And I press Next button on Try us out 'page 3'
    Then validate background image is displayed on Try us out 'page 4'
    And validate description text is displayed on Try us out 'page 4'
    And validate Next button is displayed on Try us out 'page 4'
    And validate indicator image is displayed on Try us out 'page 4'
    And validate the description text is 'Scan a restaurant wine list and choose your wine with confidence' on Try us out 'page 4'

  @POM_Test @Android @Simulator
  Scenario: Go to the Try us out page 5 and check the page
    Given I launch the app
    When I press 'Try us out' button on Start Page
    And I press Next button on Try us out 'page 1'
   And I press Next button on Try us out 'page 2'
   And I press Next button on Try us out 'page 3'
   And I press Next button on Try us out 'page 4'
   Then validate background image is displayed on Try us out 'page 5'
   And validate description text is displayed on Try us out 'page 5'
   And validate 'Create free account' button is displayed on Try us out 'page 5'
   And validate 'Continue without account' button is displayed on Try us out 'page 5'
   And validate 'Try us out' button is displayed on Try us out 'page 5'
   And validate 'Log in' button is displayed on Try us out 'page 5'
   And validate indicator image is displayed on Try us out 'page 5'
   And validate the description text is 'Create a free account to save your wine scans, forever' on Try us out 'page 5'


