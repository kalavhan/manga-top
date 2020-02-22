class VotesController < ApplicationController
  def create
    article_id = params[:id]
    user_id = current_user.id
    @new_vote = Vote.new(user_id: user_id, article_id: article_id)
    @new_vote.save
    get_articles_per_categorie(params[:category_id])
    redirect_to articles_path(id: params[:category_id])
  end

  def destroy
    article_id = params[:id]
    user_id = current_user.id
    article_voted = Vote.where('user_id = ? AND article_id = ?', user_id, article_id)
    article_voted.destroy_all
    get_articles_per_categorie(params[:category_id])
    redirect_to articles_path(id: params[:category_id])
  end
end
