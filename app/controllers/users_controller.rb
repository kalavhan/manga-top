class UsersController < ApplicationController
  def new
    redirect_to root_path if logged_in?
    @user = User.new
    @signup_link = 'nav-link-active'
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def kill
    User.destroy_all
    Article.destroy_all
    ArticleCategory.destroy_all
    redirect_to signup_path
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
