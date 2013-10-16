class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :query
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.string :answer
    end
  end
end
