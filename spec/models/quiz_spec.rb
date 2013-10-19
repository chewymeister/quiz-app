require 'spec_helper'

describe Quiz do

  let(:quiz) {Quiz.new}

  # it 'should score a new attempt of quiz' do
  #   questions_hash = {'9' => 'London', '7' => 'Beijing'}
  #   attempt = questions_hash.map { |key, value| value }
  #   question = double :question
  #   question.should_receive(:answer).and_return(attempt.pop)

  #   expect(quiz.score questions_hash).to eq "100%"
  # end

end