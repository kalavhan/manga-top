class PagesController < ApplicationController
  def homepage
    @home_link = "nav-link-active"
    get_home_articles
  end
end
