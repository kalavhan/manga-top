class ArticlesController < ApplicationController
  def new 
    redirect_to signin_path unless logged_in?
    @article = Article.new
    @new_article_link = "nav-link-active"
  end
  
  def create
    params[:article][:AuthorId] = current_user.id
    @article = Article.create(article_params)
    @categories = Category.all
    p "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    p @categories
    if @article.save
      redirect_to root_path
    end
  end

  private

  def article_params
    params.require(:article).permit(:Title, :Text, :Image, :AuthorId)
  end
end
