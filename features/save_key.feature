Feature: Save API Key

  Background:

    Given I run the "save_key" action
    

  Scenario: Valid API key passed

    When I input a valid API key
    Then the API key is saved
    And I see the API key returned


  Scenario: Invalid API key passed

    When I input an invalid API key
    Then I see that the "reenter_key" action is run
