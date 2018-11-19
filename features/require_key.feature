Feature: Require key

  Background:

    Given I run the "require_key" action


  Scenario: No key exists

    When I do not have a key on the device
    Then I see the "signup_or_enter_key" action is run


  Scenario: Key exists

    When I have a key on the device
    Then I see the key is returned