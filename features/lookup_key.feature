Feature: Lookup API Key

  Background:

    Given I run the "lookup_key" action


  Scenario: API key exists

    When I have an existing API key
    Then I see my apiKey is returned


  Scenario: API key does not exist

    When I do not have an existing API key
    Then I see an error code is returned