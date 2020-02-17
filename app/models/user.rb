class User < ApplicationRecord
  has_many :created_articles, foreign_key: :author_id, class_name: 'Article'
  has_many :votes, class_name: 'Vote'
  validates :name, presence: true, length: { in: 2..15 }
end
