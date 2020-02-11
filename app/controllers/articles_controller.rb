class ArticlesController < ApplicationController
  def new 
    @article = Article.new
    @new_article_link = "nav-link-active"
  end
  
  def create
    params[:article][:user_id] = @current_user.id
    @article = Article.create(article_params)
    if @article.save
      redirect_to root_path
    end
  end

  private

  def article_params
    params.require(:article).permit(:Title, :Text, :Image, :User_id)
  end
end
