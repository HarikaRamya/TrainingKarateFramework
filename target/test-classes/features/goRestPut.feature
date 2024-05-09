Feature: To put data

Background: 
* url 'https://gorest.co.in/public/v2/users'
Scenario: To put data
	Given path '/6893820'
	* header Authorization = 'Bearer a2c410ebfb724ff923b4357ef20c5f1e2d5f3251024baad6396b87832bf4e099'
	And request
	"""
	{"name":"userPut3","email":"user1@test.com"}
	"""
	When method PUT
	Then status 200
	* print response
	Given path '/6893820'
	When method GET
	* print response
	
