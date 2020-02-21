class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_categories_with_articles
  include SessionsHelper
  include PagesHelper
  include ArticlesHelper
  include VotesHelper

  private 

  def get_categories_with_articles
    @categorie_list = ArticleCategory.cat_with_art
  end
end
