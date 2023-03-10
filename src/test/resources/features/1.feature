@B28G35-117
Feature: Default

	
	@B28G35-115
	Scenario: Verify the users view all modules in the Employees page
		Given user on login page
		When user successfully logs in
		Then user clicks 'Employee' page and clicks
		And verify that user access 'Employee' page