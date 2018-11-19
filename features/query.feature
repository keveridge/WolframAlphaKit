Feature: Query

  Background:

    Given I run the "query" action


  Scenario: Perform query

    When I pass a input
    Then I see my search return a result
    And the result is filtered by my jsonpath query


  Scenario: Pass a JSON Path query

    When I pass a JSON Path query
    Then I see my search return a result
    And the result is filtered by my jsonpath query


  Scenario: Pass an API key

    When I pass an API key as an input
    Then the search query is made using that API key


  Scenario: Do not pass an API key

    When I do not pass an API key as an input
    Then the existing API key is retrieved from the device
    And the search query is made using that API key