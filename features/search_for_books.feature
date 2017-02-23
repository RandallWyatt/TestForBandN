Feature: Search for books.

  Scenario: I want to look for a book without logging in
    Given I am not on the Barnes and Noble Page
    When I search for a book I want
    And I have found the book to add to my cart
    Then The book will be in my cart

    Scenario: I want to remove a book from my cart
      Given I am not on the Barnes and Noble Page
      And I search for a book I want
      And I have found the book to add to my cart
      When I decide to remove the book from my cart
      Then The book will not be in the cart.

