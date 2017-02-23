When /^I click on the Sign In link$/ do
  on(SignIn).sign_in_action
end

And(/^I enter my credentials$/) do
  on(SignIn).credentials
end

Then(/^I am able to sign in successfully$/) do
  @current_page.should_contain_text 'Welcome'
end