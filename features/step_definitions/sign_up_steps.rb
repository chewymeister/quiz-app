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

When(/^the user signs up with no name and the email "(.*?)" and the password "(.*?)" with the password confirmation "(.*?)"$/) do |email, password, password_confirmation|
  sign_up email, password, password_confirmation
end

Then(/^the number of users will not equal "(.*?)"$/) do |number|
  expect(User.count).not_to eq number.to_i
end

def has_account? email
  !User.find_by_email(email).blank?
end

def sign_up name='', email='', password='', password_confirmation=''
  # visit '/users/new'
  fill_in 'user[name]', with: name
  fill_in 'user[email]', with: email
  fill_in 'user[password]', with: password
  fill_in 'user[password_confirmation]', with: password_confirmation
  click_button('Sign Up')
end