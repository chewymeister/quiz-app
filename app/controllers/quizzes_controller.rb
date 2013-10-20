class QuizzesController < ApplicationController
  helper QuizzesHelper

  def index
    @quizzes = Quiz.all
  end

  def new
    @quiz = Quiz.new
    4.times { @quiz.questions.build }
  end

  def create
    @quiz = Quiz.create(params[:quiz].permit(:id, :title, 
      questions_attributes: [:id, :query, :option1, :option2, :option3, 
                             :option4, :answer]))

    if @quiz.save
      flash[:notice] = "Your quiz was saved"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    if current_user
      @quiz = Quiz.find(params[:id])
    else
      flash[:notice] = "You must be signed in to play"
      redirect_to new_session_path
    end
  end
  
  private

  def current_user
    @current_user ||=User.find(session[:user_id]) if session[:user_id]
  end
end
