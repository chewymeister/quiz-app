require_relative 'helpers/sessions'
Given(/^the user "(.*?)" has signed in with the password "(.*?)"$/) do |email, password|
  sign_in email,password
end

Then(/^the user clicks the "(.*?)" link$/) do |link|
  click_link "Sign Out"
end


