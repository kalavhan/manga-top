class Vote < ApplicationRecord
  belongs_to :article, class_name: 'Article'
  belongs_to :user, class_name: 'User'

  def self.is_voted?(user_id, article_id)
    Vote.where("user_id = ? AND article_id = ?", user_id, article_id)
  end
end
