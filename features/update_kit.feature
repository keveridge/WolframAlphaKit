Feature: UpdateKit

  Background:

    Given I run the "updatekit" action


  Scenario: UpdateKit not installed

    When the UpdateKit is not install
    Then I am prompted to install UpdateKit


  Scenario: New version of Shortcut available

    When there is a newer version of the Shortcut available
    Then I am prompted to install the newer version


  Scenario: Version of UpdateKit is too old

    When the version of UpdateKit installed is lower than the required version
    Then I am prompted to update my version of UpdateKit