require_relative 'helpers/questions'
include QuestionHelpers

Given(/^the user visits the path "(.*?)"$/) do |path|
  visit path
end

When(/^the user creates a question with "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)", "(.*?)"$/) do |query, option1, option2, option3, option4, answer|
  create_question query, option1, option2, option3, option4, answer
end

Then(/^the user should see the message "(.*?)"$/) do |message|
  expect(page).to have_content message
end

Then(/^the page should be "(.*?)"$/) do |path|
  expect(current_path).to eq path
end
