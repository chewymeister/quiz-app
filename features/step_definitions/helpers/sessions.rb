module SessionHelpers

  def has_account? email
    !User.find_by_email(email).blank?
  end

  def sign_up name='', email='', password='', password_confirmation=''
    fill_in "user[name]", with: name
    fill_in "user[email]", with: email
    fill_in "user[password]", with: password
    fill_in "user[password_confirmation]", with: password_confirmation
    click_button "Sign Up"
  end

  def sign_in email='', password=''
    visit '/sessions/new'
    fill_in 'sessions[email]', with: email
    fill_in 'sessions[password]', with: password
    click_button 'Sign In'
  end
end