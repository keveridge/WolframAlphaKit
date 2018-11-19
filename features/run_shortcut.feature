Feature: Run shortcut

  Background:

    Given I run the shortcut without specifying an action


  Scenario: Update kit

    Then I see the "update_kit" action is run


  Scenario: No API key set

    When I don't have an existing API key
    Then I see the "sign_up_or_enter" action is run


  Scenario: API key set

    When I have an existing API key
    Then I see the "find_out_more_or_edit" action is run