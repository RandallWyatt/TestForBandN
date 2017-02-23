Feature: add a book after login

  Scenario: I want to log on to Barnes and noble and add a book to my cart
    Given I am not on the Barnes and Noble Page
    When I click on the Sign In link
    And I enter my credentials
    Then I am able to sign in successfully
    And I search for a book I want
    And I have found the book to add to my cart
    Then The book will be in my cart

