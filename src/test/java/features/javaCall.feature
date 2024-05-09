Feature: Java call
Scenario: Java call
	* def objHelper = Java.type('package1.Helper')
	* def result = objHelper.printName('srh')
	* assert result == 'Hello srh'