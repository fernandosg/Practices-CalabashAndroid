Feature: Login and View the List Activity
  Scenario: Main Activity
    Given I am on Main Activity Screen
    Then I enter "fernando@email.com" in the "email" field
    Then I enter "password" in the "password" field
    Then I press button with id "login"
    Then I scroll down until I see the "Ruby" text
    Then I click on spinner with id "level"
    Then I click the item with "Junior" text
