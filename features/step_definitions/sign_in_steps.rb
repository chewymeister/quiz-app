require_relative 'helpers/sessions'
include SessionHelpers

Given(/^the user has an account on the database with the email "(.*?)"$/) do |email|
  visit '/sessions/new'
  expect(has_account? email ).to be_true
end

When(/^the user signs in with the email "(.*?)" and the password "(.*?)"$/) do |email, password|
  sign_in email,password
end

Then(/^the user will reach the quizzes index page located at "(.*?)"$/) do |path|
  expect(current_path).to eq path
end

Then(/^the user will see the message "(.*?)"$/) do |message|
  expect(page).to have_content message
end

When(/^the user signs in with the email "(.*?)" and the incorrect password "(.*?)"$/) do |email, wrong_password|
  sign_in email, wrong_password
end

Then(/^the user will reach the sign in page again"(.*?)"$/) do |path|
  expect(current_path).to eq path
end

Then(/^the user see the message "(.*?)"$/) do |message|
  expect(page).to have_content message
end


