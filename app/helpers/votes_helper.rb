module VotesHelper
  def is_voted?(article_id)
    !Vote.is_voted?(@current_user, article_id).nil?
  end
end
