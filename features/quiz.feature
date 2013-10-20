Feature: User generates a new quiz
  Scenario: User visits the home page
  Given a quiz has been created with the title "20 questions"
  When the user visits the home page
  Then the user should find a quiz with the title "20 questions"

  Scenario: User clicks on create a new quiz link
  When the user clicks on the link "Create New Quiz"
  Then the user creates a quiz with title "Capital Cities"
  Then the user fills in the following questions:

  |query               | option1 | option2 | option3 | option4 | answer  |
  |Capital of England? | London  | Paris   | Berlin  | Beijing | London  |
  |Capital of France?  | Paris   | Berlin  | London  | Beijing | Paris   |
  |Capital of Germany? | Berlin  | London  | Beijing | Paris   | Berlin  |
  |Capital of China?   | Beijing | Paris   | London  | Berlin  | Beijing |
  Then the user clicks "Create Quiz" button
  Then the user sees the message "Your quiz was saved"


