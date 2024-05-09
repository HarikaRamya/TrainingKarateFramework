Feature: To get detail from gorest
Scenario: To veriy data from goRest
	Given url 'https://gorest.co.in/public/v2/users/2731679'
	When method GET
	* def getResponse = response
	* match getResponse.name == 'Diksha Singh'
	* match getResponse.gender == 'female'
	
	
#Scenario: To post data in to go rest
#	Given url 'https://gorest.co.in/public/v2/users'
#	And request
#	"""
#	{"name":"srh12345","email":"srh1234@gmail.com","gender":"female","status":"active"}
#	"""
#	* header Authorization = 'Bearer a2c410ebfb724ff923b4357ef20c5f1e2d5f3251024baad6396b87832bf4e099'
#	When method POST
#	Then status 200
#	* print response
#	* print response.id
#	* match response.name == 'srh12345'
	
	
	
#Scenario Outline: To post data in to go rest
#	Given url 'https://gorest.co.in/public/v2/users'
#	And request
#	"""
#	{"name": <name>,"email":<email>,"gender":"female","status":<status>}
#	"""
#	* header Authorization = 'Bearer a2c410ebfb724ff923b4357ef20c5f1e2d5f3251024baad6396b87832bf4e099'
#	When method POST
#	Then status 201
#	* print response
#	* def responseId = response.id
#	* print response.id
#	* match response.name == '<name>'
#	
#	Given url 'https://gorest.co.in/public/v2/users?id=' + responseId
#	When method GET
#	* print response
#	* match response.name == '<name>'
	
	
#Examples:
#	|name|email|status|
#	|SRH4|SRH4@test.com|active|
#	|SRH5|SRH5@test.com|active|
#	|SRH6|SRH6@test.com|active|

#Examples:
#|karate.read("file:src/test/java/Data/userData.csv")|


Scenario: To delete a user
	Given url 'https://gorest.co.in/public/v2/users/6894106'
	* header Authorization = 'Bearer a2c410ebfb724ff923b4357ef20c5f1e2d5f3251024baad6396b87832bf4e099'
	When method DELETE
	Then status 204
	Given url 'https://gorest.co.in/public/v2/users/6894106'
	When method GET
	* print response
	