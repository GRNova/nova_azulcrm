@B28G35-88
Feature: Default

	Background:
		#@B28G35-86
		Given the user is on the login page
		

	#AC1:
	#
	#As a user, I should be able to log in to the NextBaseCRM.
	@B28G35-83
	Scenario Outline: B28G35-69
		Given the user with "<userType>" enters valid username and password and click the login button
		Then verify the user should be at the home page
		Examples:
		| userType       |
		| hr_user        |
		| helpdesk_user  |
		| marketing_user |	

	#AC2:
	#
	#As a user, I should not be able to log in to the NextBaseCRM using wrong credentials
	@B28G35-84
	Scenario Outline: B28G35-69
		Given the user enters invalid "<username>" or "<password>" and click the login button
		    Then users see "Incorrect login or password" on the page
		    Examples:
		      | username     | password         |
		      | hr_user      | invalid_password |
		      | invalid_user | hd_password      |
		      | invalid_user | invalid_password |