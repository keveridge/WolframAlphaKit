Feature: Re-enter key

  Background:

    Given I run the "reenter_key"


  Scenario: Asked to re-enter key

    Then I am prompted to re-enter my key
    And I see the previous invalid key that I entered


  Scenario: Enter valid key

    When I enter a valid API key
    Then I see a success response


  Scenario: Enter invalid key

    When I enter an invalid API key
    Then I see that my API key was invalid
    And I am asked to enter a valid API key