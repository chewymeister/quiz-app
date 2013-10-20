class AttemptsController < ApplicationController

  def new
    @quiz = Quiz.find params[:quiz_id]
  end

  def create
    @quiz = Quiz.find params[:quiz_id]
    @questions = params[:questions]
    @score = @quiz.score @questions
    flash[:notice] = "#{@score}"
    redirect_to '/'
  end
  
end