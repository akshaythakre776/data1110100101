Feature: Teeth Whiteness

Scenario Outline: Teeth whiteness
    Given I'm using <brand> brand toothpaste
    When I brush for <mins> minutes
    Then the teeth look <percent> white

    Examples:
        | brand | mins	| percent  	|
        | Brand X	| 1	| 80	      	|
        | Brand Y	| 3	| 100		|
        | Brand Z	| 10	| 50			|
