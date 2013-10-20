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
  # expect(page.current_path).to eq new_quiz_path
  fill_in 'quiz_title', with: title
end

Then(/^the user fills in the following questions:$/) do |table|
  # table is a Cucumber::Ast::Table
  (data = table.raw).shift
  data.flatten!
  fill_in ''
  # print "HELLO!!!: #{data.count}"
  # print "HELLO!!!: #{page.all('.question-form').count}"
  # expect(page.current_path).to eq root_path
end

Then(/^the user clicks "(.*?)" button$/) do |arg1|
  click_button 'Create Quiz'
end

Then(/^the user sees the message "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

