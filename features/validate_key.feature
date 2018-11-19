Feature: Validate key

  Background:

    Given I run the "validate_key" action


  Scenario: Valid key

    When I pass a valid key
    Then I see a success response


  Scenario: Invalid key

    When I pass an invalid key
    Then I see a failure response