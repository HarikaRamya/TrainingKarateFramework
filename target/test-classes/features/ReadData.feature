Feature: To Read Data from csv File

Background:
	* def csvData = karate.read("file:src/test/java/Data/employee.csv")
	
Scenario: Read Data in JSON Format
	* print csvData
	* print csvData[1].name
	* def ResponseFromAPI =
	"""
	[
  {
    "id": "1",
    "name": "Ramesh",
    "salary": "20000"
  },
  {
    "id": "2",
    "name": "Suresh",
    "salary": "30000"
  },
  {
    "id": "3",
    "name": "Mahesh",
    "salary": "40000"
  }
]
	"""
* match csvData == ResponseFromAPI