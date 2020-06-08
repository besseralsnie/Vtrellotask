Description: trello board creation

Scenario: Log In
Given I am on a page with the URL 'https://trello.com/en-US'
When I click on an element with the text 'Log In'
When I enter `daryarumachik@gmail.com` in field located `By.xpath(//*[@id="user"])`
When I wait until an element with the name 'password' disappears
When I click on an element by the xpath '//*[@id="login"]'
When I enter `norwayoslonorway` in field located `By.xpath(//*[@id="password"])`
When I click on an element by the xpath '//*[@id="login-submit"]/span/span/span'
When I wait until an element with the text 'Create new board' appears

Scenario: Board creation
When I click on an element with the text 'Create new board'
When I enter `br` in field located `By.xpath(//*[@id="chrome-container"]/div[3]/div/div/div/form/div[1]/div/div[1]/input)`
When I click on an element by the xpath '//*[@id="chrome-container"]/div[3]/div/div/div/form/div[2]/button/span[2]'
When I wait until an element with the xpath '//*[@id="board"]' appears
Then an element by the xpath '//*[@id="board"]' exists
