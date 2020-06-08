Description: Task 2 Trello

GivenStories: story/trello/trello_signup.story

Scenario: Sign In
Given I am on a page with the URL 'https://trello.com/en-US'
When I click on an element with the text 'Log In'
When I enter `daryarumachik@gmail.com` in field located `By.xpath(//*[@id="user"])`
When I wait until an element with the name 'password' disappears
When I click on an element by the xpath '//*[@id="login"]'
When I enter `norwayoslonorway` in field located `By.xpath(//*[@id="password"])`
When I click on an element by the xpath '//*[@id="login-submit"]/span/span/span'
When I wait until an element with the xpath '//*[@id="header"]/div[1]/div[1]/button/span' appears

Scenario: Pages
When I click on an element by the xpath '//*[@id="header"]/div[1]/div[1]/button/span'
When I COMPARE_AGAINST baseline with `can`
When I click on an element with the text 'bremen'
When I wait until an element with the xpath '//*[@id="content"]/div/div[1]/div[3]' appears
When I COMPARE_AGAINST baseline with `cannot` ignoring:
|ELEMENT                                                                     |
|By.xpath(//*[@id="content"]/div/div[2]/div/div/div[2]/div/div[2]/div/div[3])|
When I click on an element with the attribute 'name'='house'
When I click on a link with the text 'Templates'
When I ESTABLISH baseline with `could`
When I click on an element with the attribute 'class'='_2BQG4yPMt5s_hu _2hgn5meZL7bJdx _1ctYJ9-gOV_hrm _3Xj1tqB73NcWn3'
When I click on an element by the xpath '//*[@id="content"]/div/div[2]/div/div/div/div/div[1]/nav/div[1]/ul/div/li/a/span[2]'
When I ESTABLISH baseline with `couldnot`
When I click on an element by the xpath '//*[@id="content"]/div/div[2]/div/div/div/div/div[2]/div/div/div/div/div/div[2]/div[4]/a'
When I ESTABLISH baseline with `couldnt`
