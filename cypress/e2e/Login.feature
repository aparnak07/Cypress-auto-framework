@login @regression
Feature: WebdriverUniversity - Login Page

    Background: Pre-conditions
        Given I navigate to the WebdriverUniversity homepage
        When I click on the Login Portal button

    Scenario Outline: Validate Login Page
        When I type the username <userName>
        And I type a password '<password>'
        And I click the Login button
        Then I should be presented with an alert box which contains text '<alertText>'

        Examples:
            | userName  | password     | alertText            |
            | webdriver | webdriver123 | validation succeeded |
            | webdriver | Password123  | validation failed    |
            | joe       | pass12345    | validation failed    |