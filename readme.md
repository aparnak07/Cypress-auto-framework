To install dependencies from project, will install everything from package.json 

npm install --force

To install cypress:

npm install cypress --save-dev --force

To open cypress for configuration:

npx cypress open

Framework description:

a cypress folder gets created in the root of the project with 3 sub-folders
1. e2e - where test scripts exist
2. fixtures - used for maintaining test data or api responses(json files)
3. support - e2e.js is the first file that gets executed, ideal to have test setup defined, commands.js - file used to maintain custom commands 

Install cucumber library to Cypress

npm install --save-dev @badeball/cypress-cucumber-preprocessor

additional dependencies

npm install --save-dev @bahmutov/cypress-esbuild-preprocessor
npm install ts-loader --save-dev
npm install -D cypress-xpath -- for being able to use xpath locators

Links:

https://github.com/badeball/cypress-cucumber-preprocessor
https://docs.cypress.io/guides/overview/why-cypress
https://github.com/badeball/cypress-cucumber-preprocessor/blob/master/docs/faq.md  for resolving conflicts in config.ts file
https://www.npmjs.com/package/cypress-xpath - to install cypress xpath 

BDD - Gherkin/Cucumber

Gherkin is a language that Cucumber understands


Popular keywords:
-> Feature File: High level description of a software feature/test scenario
-> Scenario : Used to describe specific test scenario
Given: pre-requisite for given test scenario
When : describes an event or action
And: provides a logical AND condition between statements
Then: Used to describe an expected outcome

https://github.com/cucumber/cucumber-expressions/blob/main/README.md - for parameter types
