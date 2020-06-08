Description: Trello

Scenario: Sign Up
Given I am on a page with the URL 'https://trello.com/en-US'
When I click on an element with the text 'Sign Up'
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
When I click on an element by the xpath '//*[@id="signup-submit"]'
When I wait until an element with the xpath '//*[@id="displayName"]' appears
When the condition '{#eval("xpath"=="//*[@id="displayName"])}' is true I do
|step                                                                        |
|When I enter `<name>` in field located `By.xpath(//*[@id="displayName"])`   |
|When I enter `norwaysweden` in field located `By.xpath(//*[@id="password"])`|
|When I click on an element by the xpath '//*[@id="signup-submit"]'          |

Examples:
|email                    |name                            |
|whitewaterlily8@gmail.com|#{generate(regexify'[a-z]{10}')}|
|daryarumachik@gmail.com  |#{generate(regexify'[a-z]{10}')}|
