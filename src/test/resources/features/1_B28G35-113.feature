@B28G35-114
Feature: Default

	Background:
		#@B28G35-113
		Given  user goes to login page
		

	@B28G35-112
	Scenario: US04 Desktop options feature
		When user puts correct password and login to sign in
		    Then verify the users sees desktop apps
		
		      | MAC OS  |
		      | WINDOWS |
		      | LINUX   |