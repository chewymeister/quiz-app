module QuestionHelpers 

  def create_question query, option1, option2, option3, option4, answer
    within '#new_question_form' do
      fill_in 'question[query]', with: query
      fill_in 'question[option1]', with: option1
      fill_in 'question[option2]', with: option2
      fill_in 'question[option3]', with: option3
      fill_in 'question[option4]', with: option4
      fill_in 'question[answer]', with: answer
      click_button 'Create Question'
    end
  end

end
