class UsersController < ApplicationController
  def new
    @user = User.new(params[:user])
    @user.save
  end

  def update
    @user = User.new(params[:user].permit(:name, :email, :password, :password_confirmation))
    redirect_to '/'
  end

end
