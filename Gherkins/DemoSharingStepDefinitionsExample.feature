Feature: Demo Sharing Step Definitions Example
	Example of a "when" line step definition being 
	shared by multiple scenarios

Scenario: A
	Given Something
	When The step definition for this is shared
	Then Something else

Scenario: B
	Given Something different
	When The step definition for this is shared
	Then Something different else

Scenario: C
	Given Something different again
	When The step definition for this is shared
	Then Something else different again