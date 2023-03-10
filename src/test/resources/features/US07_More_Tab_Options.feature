@regression
@more_tab_options
Feature: As a user, I should be able to see all the options under the MORE tab on the homepage

  Background:
    Given the user is on the login page

  Scenario Outline: Verify the users view all options under the MORE tab
    Given the "<userType>" is on the home page
    When user clicks the "MORE" tab
    Then verify the users see following 4 options
      | File         |
      | Appreciation |
      | Announcement |
      | Workflow     |

    Examples:
      | userType       |
      | hr_user        |
      | helpdesk_user  |
      | marketing_user |