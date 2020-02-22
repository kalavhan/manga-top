class Vote < ApplicationRecord
  belongs_to :article
  belongs_to :user

  def self.voted?(user_id, article_id)
    Vote.where('user_id = ? AND article_id = ?', user_id, article_id)
  end
end
