@regression
@desktop_download_options
Feature: As a user, I should be able to see desktop options to download.

  Background:
    Given  user goes to login page

  Scenario Outline:  Verify users can see desktop app options
    When user puts correct password and login to sign in
    Then verify the users sees desktop apps
Examples:
      | MAC OS  |
      | WINDOWS |
      | LINUX   |


