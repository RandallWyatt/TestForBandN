Feature: Login

  Scenario: As a Barnes and noble user, I want to be able to log in and out successfully.
    Given I am not on the Barnes and Noble Page
    When I click on the Sign In link
    And I enter my credentials
    Then I am able to sign in successfully