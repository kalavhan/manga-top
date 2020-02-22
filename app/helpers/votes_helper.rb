module VotesHelper
  def voted?(article_id)
    !Vote.voted?(@current_user, article_id).nil?
  end
end
