module QuestionHelpers 

  def create_question query, option1, option2, option3, option4, answer
    visit '/questions/new'
    within 'new_question_form' do
      fill_in 'query', with: query
      fill_in 'option1', with: option1
      fill_in 'option2', with: option2
      fill_in 'option3', with: option3
      fill_in 'option4', with: option4
      fill_in 'answer', with: answer
      click_button 'Create Question'

    end
  end

end
