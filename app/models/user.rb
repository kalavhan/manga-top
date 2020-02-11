class User < ApplicationRecord
  has_many :articles, foreign_key: 'AuthorId', class_name: 'Article'
  has_many :votes, foreign_key: 'UserId', class_name: 'Vote'
  validates :Name, presence: true, length: { minimum: 2 }
end
