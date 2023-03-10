@B28G35-121
Feature: Default

	@B28G35-120
	Scenario: US13AC01TC01 verification for configure menu options feature
		Given users are on the Homepage
		    When users click the CONFIGURE MENU option
		    Then verify the users see flowing six options
		      | Configure menu items               |
		      | Collapse menu                      |
		      | Remove current page from left menu |
		      | Add custom menu item               |
		      | Change primary tool                |
		      | Reset menu                         |