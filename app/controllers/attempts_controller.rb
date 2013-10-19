class AttemptsController < ApplicationController
  def new
    @quiz = Quiz.find params[:quiz_id]
  end

  def create
    # @params = params
    @quiz = Quiz.find params[:quiz_id]
    @questions = params[:questions]
    @score = @quiz.score @questions
    # @quiz = Quiz.find params[:quiz_id]
    # @question = Question.find params[:question_id].keys[0]
    # @answer = params[:question_id].values
    # @score = Quiz.score
    # flash[:notice] = "Attempt created with quiz #{@quiz.title} question #{@question.query} and answer #{@answer}"
    flash[:notice] = "#{@score}"
    redirect_to '/'
  end
end