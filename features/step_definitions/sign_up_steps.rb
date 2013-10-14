require_relative 'helpers/sessions'
include SessionHelpers

Given(/^the user has no account on the database with the email "(.*?)"$/) do |email|
  expect(has_account? email).to be_false
  expect(User.count).to eq 0
end

When(/^the user goes to the sign up page at "(.*?)"$/) do |path|
 visit path
end

When(/^the user signs up with the name "(.*?)" and the email "(.*?)" and the password "(.*?)" with the password confirmation "(.*?)"$/) do |name, email, password, password_confirmation|
  sign_up name, email, password, password_confirmation
end

Then(/^the number of users will equal "(.*?)"$/) do |number|
  expect(User.count).to eq number.to_i
end

Then(/^sees the message "(.*?)"$/) do |message|
  expect(page).to have_content message
end

When(/^the user signs up with no name and the email "(.*?)" and the password "(.*?)" with the password confirmation "(.*?)"$/) do |email, password, password_confirmation|
  sign_up nil, email, password, password_confirmation
end

Then(/^the number of users will not equal "(.*?)"$/) do |number|
  expect(User.count).not_to eq number.to_i
end