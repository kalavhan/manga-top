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
      params[:article][:categories].each do |catego|
          @article_category = ArticleCategory.new(article: @article, category: Category.find(catego))
          @article_category.save
      end
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @all_article_link = "nav-link-active"
    @category_articles = articles_categories_all(params[:id])
  end
  private

  def article_params
    params.require(:article).permit(:title, :text, :image, :author_id)
  end
end
