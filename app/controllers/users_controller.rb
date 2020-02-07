class UsersController < ApplicationController
  def new
    @user = User.new
    @signup_link = 'nav-link-active'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:Name)
  end
end
