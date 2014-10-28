Feature: Album submission

	As a user
	so that I can track my albums
	I want to add a new album to the list
	
	Scenario: Add an album
		Given I'm on the album creation page
		When I add a new album
		Then I should see the newly created album
		
	Scenario: Add an album without price
		Given I'm on the album creation page
		When I add a new album with no price
		Then I should see errors on the page