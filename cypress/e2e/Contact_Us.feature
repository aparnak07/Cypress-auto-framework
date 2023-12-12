Feature: WebdriverUniversity - Contact Us Page

    Background: Pre-conditions
        Given I navigate to the WebdriverUniversity homepage
        When I click on the Contact Us button

    Scenario: Valid Contact Us Form Submission
        And I type a first name
        And I type a last name
        And I enter an email address
        And I type a comment
        And I click the Submit button
        Then I should be presented with a successful contact us submission message

    Scenario: Invalid Contact Us Form Submission
        And I type a first name
        And I type a last name
        # And I enter an email address
        And I type a comment
        And I click the Submit button
        Then I should be presented with a error message

    Scenario: Valid Contact Us Form Submission - Using specific data
        And I type a specific first name "Sarah"
        And I type a specific last name "Jones"
        And I type a specific email address "Sarah.Jones@mail.com"
        And I type a specific word "Test111" and number 6788 within the comment input field
        And I click the Submit button
        Then I should be presented with a successful contact us submission message

    #Create different scenarios with Scenario Outline
    Scenario Outline: Validate Contact Us Page
        And I type a first name <firstName> and a last name '<lastName>'
        And I type a email address '<email>' and a comment '<comment>' within the comment input field
        And I click the Submit button
        Then I should be presented with a message '<message>'
        #data needs to be provided in the examples table
        Examples:
            | firstName | lastName | email       | comment      | message                      |
            | Aparna    | Shanbhag | a@gmail.com | Test1        | Thank You for your Message!  |
            | Deon      | Wired    | dw@www.com  | Test2        | Thank You for your Message!  |
            | Invalid   | Test     | it          | Invalid test | Error: Invalid email address |
