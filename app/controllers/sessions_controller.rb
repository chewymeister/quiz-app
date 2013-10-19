class SessionsController < ApplicationController

  def new
    @session = User.new
  end

  def create
    @user = User.authenticate(params[:sessions][:email], params[:sessions][:password])
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "Welcome #{@user.name}! Please choose a quiz to play."
      redirect_to '/quizzes'
    else
      flash[:errors] = 'Your email or your password did not match. Please try again'
      redirect_to '/sessions/new'
    end
  end

end