class ArticlesController < ApplicationController
  def new
    redirect_to signin_path unless logged_in?
    @article = Article.new
    @new_article_link = 'nav-link-active'
  end

  def create
    @article = current_user.created_articles.build(article_params)
    if params[:article][:categories].nil?
      @article.errors.add(:Categories, " can't be empty")
      render 'new'
      nil
    elsif @article.save
      params[:article][:categories].each do |catego|
        @article_category = ArticleCategory.new(article: @article, category: Category.find(catego.to_i))
        @article_category.save
      end
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @all_article_link = 'nav-link-active'
    giveme_articles_per_categorie(params[:id])
  end

  def show
    @show_article = ArticleCategory.get_article(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image, :author_id)
  end
end
