@B28G35-87
Feature: Default

	Background:
		#@B28G35-86
		Given the user is on the login page
		


	@B28G35-85
	Scenario Outline: As a user, I want to see mobile app options to download. 
		Given the "<userType>" is on the home page
		    Then verify the users see following 2 mobile app options
		      | APP STORE   |
		      | GOOGLE PLAY |
		    Examples:
		      | userType       |
		      | hr_user        |
		      | helpdesk_user  |
		      | marketing_user |