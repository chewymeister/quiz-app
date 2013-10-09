class UsersController < ApplicationController
  


  def new
    @user = User.new
  end

  def update
  end

  def create
    @user = User.new(params[:user].permit(:name, :email, :password, :password_confirmation))ijjr
    @user.save
    redirect_to '/'
  end

end
