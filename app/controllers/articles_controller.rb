class ArticlesController < ApplicationController
  def new 
    redirect_to signin_path unless logged_in?
    @article = Article.new
    @new_article_link = "nav-link-active"
  end
  
  def create
    params[:article][:categories].reject!(&:empty?).map!(&:to_i)
    @article = current_user.created_articles.build(article_params)
    if @article.save
      params[:article][:categories].each do |categorie|
          @article.article_categories.build(category_id: categorie.to_i)
      end
      @article.save 
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    
  end
  private

  def article_params
    params.require(:article).permit(:title, :text, :image, :author_id)
  end
end
