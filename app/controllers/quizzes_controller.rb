class QuizzesController < ApplicationController

  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
    4.times { @quiz.questions.build }
    # @quiz.populate(num_of_questions: 5)
  end

  def create
    @quiz = Quiz.create(params[:quiz].permit(:id, :title, questions_attributes: [:id, :query, :option1, :option2, :option3, :option4, :answer]))

    if @quiz.save
      flash[:notice] = "Your quiz was saved"
      redirect_to '/'
    else
      render 'new'
    end
  end

  def show
    @quiz = Quiz.find(params[:id])
  end
  
end
