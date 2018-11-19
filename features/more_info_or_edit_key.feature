Feature: Find out more or edit API key

  Background:

    Given I run the "find_out_more_or_edit" action


  Scenario: Presented with options

    Then I see see the following options:
      | Find out more about WolframAlphaKit |
      | Edit your existing API key          |


  Scenario: Choose to find out more

    When I choose to find out more about WolframAlphaKit
    Then I see the WolframAlphaKit page in Safari


  Scenario: Choose to edit API key

    When I choose to edit my API key
    Then I see a prompt to enter my new API key
    And I see my existing API key is populated


  Scenario: Enter a valid API key

    And I choose to edit my API key
    When I enter a new API key
    Then I see that the API key has been updated
    And I see confirmation of the API key value I entered


  Scenario: Enter an invalid API key

    And I choose to edit my API key
    When I enter an invalid API key
    Then I see that the "reenter_key" action is run
