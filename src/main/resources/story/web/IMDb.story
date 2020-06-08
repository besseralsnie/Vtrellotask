Description: Simple story to test imdb;

Scenario: Sign in
Given I am on a page with the URL 'https://www.imdb.com/'
When I click on an element by the xpath '//div[@class='_3cMNCrSVkxQhCkVs1JLIib navbar__user sc-kgoBCf iTQkiJ']'
When I click on an element by the xpath '//*[@id="signin-options"]/div/div[1]/a[1]'
When I enter `daryarumachik@gmail.com` in field located `By.xpath(//*[@id="ap_email"])`
When I enter `qwerty12345` in field located `By.xpath(//*[@id="ap_password"])`
When I click on an element by the xpath '//*[@id="signInSubmit"]'
Then the page with the URL 'https://www.imdb.com/?ref_=login' is loaded

Scenario: My watchlist
When I enter 'pirates of the caribbean' in a field with the name 'q'
When I click on an element by the xpath '//*[@id="suggestion-search-button"]'
When I click on a link with the text 'Pirates of the Caribbean: The Curse of the Black Pearl'
When I click on an element by the xpath '//*[@id="title-overview-widget"]/div[2]/div[2]/button[2]'
When I click on a link with the text 'Watchlist'
When I select 'Runtime' from a drop down by the xpath '//*[@id="lister-sort-by-options"]'
When I click on a link with the text 'Export this list'
