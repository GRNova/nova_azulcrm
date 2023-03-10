@B28G35-119
Feature: Default


	@B28G35-118
	Scenario: US06AC01TC01 verification for profile options are displayed feature
		Given users are on the homepage
		    When users click the profile name
		    Then verify the users see flowing five options
		      | My Profile              |
		      | Edit Profile Settings   |
		      | Themes                  |
		      | Configure notifications |
		      | Logout                  |