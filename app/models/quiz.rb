class Quiz < ActiveRecord::Base
    has_many :questions

    accepts_nested_attributes_for :questions

    def score questions_hash
      total = []
      questions_hash.each do |question_id, attempt|
        question = Question.find question_id.to_i
        if attempt == question.answer
          total << :correct
        else
          total << :incorrect
        end
      end
      total_correct = total.select{ |score| score == :correct }.count.to_f
      "#{ (total_correct / total.count.to_f * 100).to_i }%"
    end

end