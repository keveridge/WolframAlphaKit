Feature: Version checking

  Scenario: Return version

    Given I run the "version" action
    Then I see the version number returned


  Scenario: Required minimum version is available

    Given I run the "required_min_version" action
    When the version I require is greater than or equal to WolframAlphaKit's version
    Then I should see the shortcut continue to run


  Scenario: Required minimum version is not available

    Given I run the "required_min_version" action
    When the version I require is less than or equal to WolframAlphaKit's version
    Then I should see a message that I need to upgrade my version of WolframAlphaKit
    And I should see the "updatekit" action is run

