class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    user = User.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :password_hash, :email, :password, :password_confirmation)
  end
end