Feature: Demo of Basic Auth
Background: Get url
* def global = karate.read("file:src/test/java/Data/globalVariables.json")
* def userName = get global.userName
* def userPassword = get global.userPassword
* def final_url = "https://"+userName+":"+userPassword+"@"+global.baseURL
* url get final_url

Scenario: Basic Auth
Given path "/"
When method GET
* print response
Then status 200
Then match $ contains "Congratulations" 
