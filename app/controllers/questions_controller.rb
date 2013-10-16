class QuestionsController < ApplicationController

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(params[:question].permit(:query, :option1, :option2, :option3, :option4, :answer))
    if @question.save
      flash[:notice] = "Your question was created"
      redirect_to '/'
    else
      flash[:errors] = @question.errors.values
      redirect_to '/questions/new'
    end
  end

end
