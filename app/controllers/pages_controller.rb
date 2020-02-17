class PagesController < ApplicationController
  def homepage
    @home_link = "nav-link-active"
    @article_categories = ArticleCategory.five_most_recent_articles
    @main_article = Article.most_voted
  end
end
