@B28G35-110
Feature: Default

	Background:
		#@B28G35-86
		Given the user is on the login page

	@B28G35-109
	Scenario Outline: As a user, I should be able to see all the options under the MORE tab on the homepage.
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