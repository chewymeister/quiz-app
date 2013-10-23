class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def update

  end

  def create
    @user = User.create(params[:user].permit(:name, :email, :password, :password_confirmation))
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "You are now signed up #{@user.name}! Play a quiz!"
      redirect_to '/'
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to '/users/new'
    end
  end

end
