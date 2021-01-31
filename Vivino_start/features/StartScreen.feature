Feature: Test the Start page object

  @POM_Test @Android @Simulator
  Scenario: Test if objects are visible on pages.
    Given I launch the app
    Then Validate 'Get started' button is displayed on Start page
    And Validate 'Try us out' button is displayed on Start page
    And Validate 'I have an account' button is displayed on Start page
    And Validate 'See how it works' button is displayed on Start page
    And Validate description text is displayed on Start page
    And Validate background image is displayed on Start page

  @TEST
  Scenario: Go to See work it works page
    Given I launch the app
    When I press 'See how it works' button on Start Page