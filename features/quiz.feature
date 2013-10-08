Feature: User generates a new quiz
  Scenario: User visits the home page
  Given a quiz has been created with the title "20 questions"
  When the user visits the home page
  Then the user should find a quiz with the title "20 questions"

