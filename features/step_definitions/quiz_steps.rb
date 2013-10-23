Given(/^a quiz has been created with the title "(.*?)"$/) do |title|
  quiz = Quiz.new title: title
  quiz.save
end

When(/^the user visits the home page$/) do
  visit root_path
end

Then(/^the user should find a quiz with the title "(.*?)"$/) do |title|
  expect(page).to have_content title
end

When(/^the user clicks on the link "(.*?)"$/) do |link|
  visit root_path
  click_link link
end

Then(/^the user creates a quiz with title "(.*?)"$/) do |title|
  fill_in 'quiz_title', with: title
end

Then(/^the user fills in the query with "(.*?)", option one "(.*?)", option two "(.*?)", option three, "(.*?)", option four "(.*?)", answer "(.*?)"$/) do |query, option1, option2, option3, option4, answer|
  
end

Then(/^the user clicks "(.*?)" button$/) do |arg1|
  click_button 'Create Quiz'
end

Then(/^the user sees the message "(.*?)"$/) do |message|
  expect(page).to have_content message
end

