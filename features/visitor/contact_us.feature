@visitor @email
Feature: Contact Us
  As a visitor
  I want to contact Gaslight
  So that I can start working on my awesome idea

  Scenario: Landing Page Contact
    Given I am viewing the landing page
    When I fill out the form
    Then I should be notified that the contact has been sent
    And Gaslight should receive my email

  @javascript
  Scenario: Landing Page Contact with AJAX
    Given I am viewing the landing page
    When I submit the empty form
    Then I should be notified that the contact has not been sent
    When I fill out the form
    Then I should be notified that the contact has been sent
    And Gaslight should receive my email

