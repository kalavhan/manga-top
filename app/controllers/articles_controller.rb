class ArticlesController < ApplicationController
  def new 
    @article = Article.new
  end
  
  def create
  end
end
