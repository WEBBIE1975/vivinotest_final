Feature: Email verification on Create account Page with combined step and background

  Background:
    Given I use config file AccountInfo2

  @Test @Android @Simulator @WIP
  Scenario: Verify if mail account is correct on Create account page using yml file and combined step.
    Given I am at the Create account Page
    When I enter the email from the config file on Create account Page
    And I enter the password from the config file on Create account Page
    And I press 'NEXT' on Create account Page
    Then validate error message dialog is showing
    And validate dialog title is 'Vivino Beta'
    And validate dialog error message is 'Please enter valid e-mail'
    And validate 'OK' button is displayed





