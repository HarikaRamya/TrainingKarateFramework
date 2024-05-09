Feature: Dummy Feature

Scenario: Dummy Scenario
	* print 'Hello'
	* def x = 10
	* def y = 20
	* print x+y
	
Scenario: Simple Rest Call
	Given url 'https://gorest.co.in/public/v2/users'
	When method GET
	Then status 200
	* print response
	
Scenario: Test JSON Content
	* def jsonContent =
	"""
	{
    "glossary": {
        "title": "example glossary",
		"GlossDiv": {
            "title": "S",
			"GlossList": {
                "GlossEntry": {
                    "ID": "SGML",
					"SortAs": "SGML",
					"GlossTerm": "Standard Generalized Markup Language",
					"Acronym": "SGML",
					"Abbrev": "ISO 8879:1986",
					"GlossDef": {
                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
						"GlossSeeAlso": ["GML", "XML"]
                    },
					"GlossSee": "markup"
                }
            }
        }
    }
}
	"""
	* print jsonContent.glossary.title
	* match jsonContent.glossary.title == 'example glossary'
	
	
Scenario: Read json Array Content
	* def colorContent =
	"""
	[
	{
		color: "red",
		value: "#f00"
	},
	{
		color: "green",
		value: "#0f0"
	},
	{
		color: "blue",
		value: "#00f"
	},
	{
		color: "cyan",
		value: "#0ff"
	},
	{
		color: "magenta",
		value: "#f0f"
	},
	{
		color: "yellow",
		value: "#ff0"
	},
	{
		color: "black",
		value: "#000"
	}
]
	"""
	* print colorContent[3].color
	