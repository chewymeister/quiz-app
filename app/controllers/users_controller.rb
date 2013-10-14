class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def update

  end

  def create
    @user = User.create(params[:user].permit(:name, :email, :password, :password_confirmation))
    # @user.save

    if @user.save
      redirect_to '/'
    else
      flash[:errors] = @user.errors.values
      redirect_to '/users/new'
    end
  end

end
