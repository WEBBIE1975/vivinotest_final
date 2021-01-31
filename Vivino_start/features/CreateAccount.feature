Feature: Email verification on Create account Page

  @Test @Android @Simulator
  Scenario: Verify if mail account is correct on Create account page.
    Given I launch the app
    When I press 'Get started' button on Start Page
    And I enter 'Email' as email on Create account Page
    And I enter 'Password' as password on Create account Page
    And I press 'NEXT' on Create account Page
    Then validate error message dialog is showing
    And validate dialog title is 'Vivino Beta'
    And validate dialog error message is 'Please enter valid e-mail'
    And validate 'OK' button is displayed


  @Test @Android @Simulator
  Scenario Outline: Verify if mail account is correct on Create account page using outline.
    Given I launch the app
    When I press 'Get started' button on Start Page
    And I enter '<Email>' as email on Create account Page
    And I enter '<Password>' as password on Create account Page
    And I press 'NEXT' on Create account Page
    Then validate error message dialog is showing
    And validate dialog title is 'Vivino Beta'
    And validate dialog error message is 'Please enter valid e-mail'
    And validate 'OK' button is displayed

    Examples:
      | Email      | Password   |
      | Test1      | Password1  |
      | Test2@     | Password1  |
      | Test3@.dk  | Password3  |

  @Test @Android @Simulator
  Scenario: Verify if mail account is correct on Create account page using yml file.
    Given I launch the app
    When I press 'Get started' button on Start Page
    And I enter the email from the config file on Create account Page
    And I enter the password from the config file on Create account Page
    And I press 'NEXT' on Create account Page
    Then validate error message dialog is showing
    And validate dialog title is 'Vivino Beta'
    And validate dialog error message is 'Please enter valid e-mail'
    And validate 'OK' button is displayed

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





