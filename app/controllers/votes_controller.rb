class VotesController < ApplicationController
  def vote
    redirect_to signin_path unless logged_in?
    article_id = params[:id]
    user_id = current_user.id
    article_voted = Vote.where("user_id = ? AND article_id = ?", user_id, article_id)
    if article_voted.empty?
      @new_vote = Vote.new(user_id: user_id, article_id: article_id)
      @new_vote.save
    else
      article_voted.destroy_all
    end
    get_articles_per_categorie(params[:category_id])
    redirect_to articles_path(:id => params[:category_id])
  end
end
