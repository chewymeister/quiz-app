Feature: A question will be created that has a query and has an answer

  Scenario Outline: User creates a new question
    Given the user visits the path "/questions/new"
    When the user creates a question with "<query>", "<option1>", "<option2>", "<option3>", "<option4>", "<answer>"
    Then the page should be "/"
    Then the user should see the message "Your question was created"

    Examples:
      | query                           | option1  | option2 | option3 | option4 | answer |
      | What is the capital of England? | London   | Berlin  | Beijing | Paris   | London |
      | What is the capital of China?   | Beijing  | London  | Berlin  | Paris   | Beijing|
      | What is the capital of France?  | Berlin   | Paris   | Beijing | London  | Paris  |
      | What is the capital of Germany? | London   | Berlin  | Paris   | Beijing | Berlin |


  
