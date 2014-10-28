Feature: Playlist submission

	As a user
	so that I can track my playlists
	I want to add playlists
	
	Scenario: Add an playlist
		Given I'm on the playlist creation page
		When I add a new playlist
		Then I should see the newly created playlist
		Then show me the page