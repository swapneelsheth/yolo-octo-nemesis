Feature: Album submission

	As a user
	so that I can track my albums
	I want to add a new album to the list
	
	Scenario: Add an album
		Given I'm on the album creation page
		When I add a new album
		Then I should see the newly created album
		Then show me the page