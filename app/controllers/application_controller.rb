require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery with: :exception
  before_action :giveme_categories_with_articles
  include SessionsHelper
  include PagesHelper
  include ArticlesHelper
  include VotesHelper

  private

  def giveme_categories_with_articles
    @categorie_list = ArticleCategory.cat_with_art
  end
end
