class Quiz < ActiveRecord::Base
    has_many :questions

    accepts_nested_attributes_for :questions

    def score questions_hash
      total_correct = 0
      total = questions_hash.map do |question_id, attempt|
        question = Question.find question_id.to_i
        total_correct += 1 if attempt == question.answer
      end
      "#{ (total_correct / total.count.to_f * 100).to_i }%"
    end

end