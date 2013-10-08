Feature: User signs up for an account

  Scenario: When the user has no account on the database
  Given the user has no account on the database with the email "test@test.com"
  When the user goes to the sign up page at "/users/new"
  When the user signs up with the name "test" and the email "test@test.com" and the password "test" with the password confirmation "test"
  Then the number of users will equal "1"
