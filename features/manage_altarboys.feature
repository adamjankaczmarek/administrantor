Feature: Manage AltarBoys
	In order to create an altar boys management system
	As an Manager
	I want to create and manage altar boys

	Scenario: AltarBoys list
		Given I have altar boys named Adam Stary, Artur Uszaty, Andrzej Prezes
		When I go to the list of altar boys
		Then I should see "Adam Stary"
		And I should see "Artur Uszaty"
		And I should see "Andrzej Prezes"