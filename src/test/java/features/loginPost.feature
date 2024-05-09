Feature: To test post in vwo login page
Scenario: Test Post in VWO Page
Given url 'https://app.vwo.com/login'
And request
	"""
	{"username":"srh@training.com", "password":"Harika@123", "remember":false, "recaptcha_response_field":""}
	"""
When method POST
* def cookieValue = responseCookies
* print cookieValue
Then status 200

Scenario: Test Post in VWO Page negative scenario
Given url 'https://app.vwo.com/login'
And request
	"""
	{"username":"srh@training1.com", "password":"Harika@123", "remember":false, "recaptcha_response_field":""}
	"""
When method POST
Then status 200