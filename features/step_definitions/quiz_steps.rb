Given(/^a quiz has been created with the title "(.*?)"$/) do |title|
  quiz = Quiz.new title: title
  quiz.save
end

When(/^the user visits the home page$/) do
  visit '/'
end

Then(/^the user should find a quiz with the title "(.*?)"$/) do |title|
  expect(page).to have_content title
end


