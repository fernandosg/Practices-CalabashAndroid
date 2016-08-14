Feature: Login and View the List Activity
  Scenario: Main Activity
    Given I am on Main Activity Screen
    Then I enter "fernando@email.com" in the "email" field
    Then I enter "password" in the "password" field
    Then I press button with id "login"
