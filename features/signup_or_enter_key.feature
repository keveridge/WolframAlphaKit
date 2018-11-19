Feature: Sign up or enter API key

  Background:

    Given I run the "sign_up_or_enter" action


  Scenario: Presented with options

    Then I should see the following options:
      | Sign up for an API key      |
      | Enter your existing API key |
      | Cancel                      |


  Scenario: Choose to sign up

    When I choose to sign up for an API key
    Then I see a message explaining how to sign up for an API key
    And the option to continue or cancel


  Scenario: Continue to sign up

    When I choose to continue signing up
    Then I see the WolframAlpha API page in Safari


  Scenario: Cancel sign up

    When I choose to cancel signing up
    Then I see the shortcut end


  Scenario: Choose to enter your API key

    When I choose to enter my API key
    Then I must see a prompt to enter my API key


  Scenario: Enter a valid API key

    And I choose to enter my API key
    When I enter a valid API key
    Then I see that the "save_key" action is run


  Scenario: Enter an invalid API key

    And I choose to enter my API key
    When I enter an invalid API key
    Then I see that the "reenter_key" action is run
