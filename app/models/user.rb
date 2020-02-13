class User < ApplicationRecord
  has_many :created_articles, foreign_key: :author_id, class_name: 'Article'
  has_many :votes
  validates :name, presence: true, length: { minimum: 2 }
end
