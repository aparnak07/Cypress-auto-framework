import { When, Then } from "@badeball/cypress-cucumber-preprocessor";

let stub;

// {} matches anything
When('I type the username {}', (userName) => {
    cy.get("#text").type(userName);
})

When('I type a password {string}', (password) => {
    cy.get("#password").type(password);
})

When('I click the Login button', () => {
    stub = cy.stub();
    cy.on('window:alert', stub);
    cy.get("#login-button").click();
})

Then('I should be presented with an alert box which contains text {string}',(alertText) => {
    expect(stub).to.have.been.calledWith(alertText);
})