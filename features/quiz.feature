Feature: User generates a new quiz
  Scenario: User visits the home page
  Given a quiz has been created with the title "20 questions"
  When the user visits the home page
  Then the user should find a quiz with the title "20 questions"

  Scenario: User clicks on create a new quiz link
  When the user clicks on the link "Create New Quiz"
  Then the user creates a quiz with title "Capital Cities"
  Then the user fills in the query with "What is the capital of England?", option one "London", option two "Paris", option three, "Berlin", option four "Beijing", answer "London"
  Then the user clicks "Create Quiz" button
  And the user sees the message "Your quiz was saved"


