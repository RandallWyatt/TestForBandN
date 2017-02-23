Given(/^I am not on the Barnes and Noble Page$/) do
  visit HomePage
end

When(/^I search for a book I want$/) do
  on(HomePage).search_for_books
end

And(/^I have found the book to add to my cart$/) do
  on(ContraryBookPage).get_book
end

Then(/^The book will be in my cart$/) do
  visit(CartPage).should_contain_text 'A Perfect Union of Contrary Things'
end

When(/^I decide to remove the book from my cart$/) do
  visit(CartPage).remove_book
end

Then(/^The book will not be in the cart\.$/) do
  on(CartPage).should_contain_text 'You don\'t have items in your cart.'
end